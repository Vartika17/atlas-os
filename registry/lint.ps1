# Atlas OS registry lint — kills silent registry rot (CTO finding C3).
# Zero dependencies; Windows PowerShell 5.1 compatible.
#
# Enforces:
#   1. Every governed artifact (any .md with YAML frontmatter, outside
#      archive/, _template/, retros/, output/) has valid frontmatter per
#      kernel/artifact-spec.md: name, semver version, status enum, type enum,
#      non-empty description.
#   2. Artifact names are unique repo-wide.
#   3. Every governed artifact has a row in registry/index.yaml (matched by
#      path); version/status match when the row declares them.
#   4. Every artifact path in index.yaml exists on disk.
#
# Usage:  powershell -File registry\lint.ps1
# Exit 0 = clean. Exit 1 = violations listed on stdout.

$ErrorActionPreference = 'Stop'
$root = Split-Path $PSScriptRoot -Parent
$failures = New-Object System.Collections.Generic.List[string]

$statusEnum = @('draft', 'active', 'deprecated', 'archived')
$typeEnum = @('kernel-doc', 'pattern', 'agent', 'workflow', 'framework',
              'knowledge', 'taste', 'template', 'asset-manifest',
              'genome-doc', 'client-doc')
$excludePattern = '\\archive\\|\\_template\\|\\retros\\|\\output\\|\\node_modules\\|\\\.git\\'

function Get-FrontmatterField {
    param([string]$Block, [string]$Key)
    if ($Block -match "(?m)^${Key}:\s*(.+)\s*$") { return $Matches[1].Trim() }
    return $null
}

# ---- Pass 1: scan governed artifacts ----
$artifacts = @()   # objects: Path (repo-relative, fwd slashes), Name, Version, Status, Type
$namesSeen = @{}

$mdFiles = Get-ChildItem -Path $root -Recurse -Filter *.md |
    Where-Object { $_.FullName -notmatch $excludePattern }

foreach ($f in $mdFiles) {
    $raw = Get-Content $f.FullName -Raw -Encoding UTF8
    if ($raw -notmatch '(?s)^\xEF?\xBB?\xBF?---\r?\n(.*?)\r?\n---') { continue }  # no frontmatter -> not governed
    $fm = $Matches[1]
    $rel = $f.FullName.Substring($root.Length + 1).Replace('\', '/')

    $name = Get-FrontmatterField $fm 'name'
    $version = Get-FrontmatterField $fm 'version'
    $status = Get-FrontmatterField $fm 'status'
    $type = Get-FrontmatterField $fm 'type'
    $desc = Get-FrontmatterField $fm 'description'

    if (-not $name) { $failures.Add("$rel : missing 'name'") }
    if (-not $version -or $version -notmatch '^\d+\.\d+\.\d+$') { $failures.Add("$rel : version missing or not semver ('$version')") }
    if (-not $status -or $statusEnum -notcontains $status) { $failures.Add("$rel : status missing or not in [$($statusEnum -join '|')] ('$status')") }
    if (-not $type -or $typeEnum -notcontains $type) { $failures.Add("$rel : type missing or not in enum ('$type')") }
    if (-not $desc) { $failures.Add("$rel : missing 'description'") }

    if ($name) {
        if ($namesSeen.ContainsKey($name)) { $failures.Add("$rel : duplicate name '$name' (also in $($namesSeen[$name]))") }
        else { $namesSeen[$name] = $rel }
    }

    $artifacts += [pscustomobject]@{ Path = $rel; Name = $name; Version = $version; Status = $status; Type = $type }
}

# ---- Pass 2: parse registry/index.yaml artifact rows ----
$indexPath = Join-Path $root 'registry\index.yaml'
$indexRaw = Get-Content $indexPath -Raw -Encoding UTF8
$registryRows = @{}   # path -> @{Name=..; Version=..; Status=..}

foreach ($line in ($indexRaw -split "`n")) {
    if ($line -match '^\s*-\s*\{\s*name:\s*([^,}]+?)\s*,\s*path:\s*([^,}]+?)\s*(?:,|\})') {
        $rName = $Matches[1].Trim()
        $rPath = $Matches[2].Trim()
        $rVersion = $null; $rStatus = $null
        if ($line -match 'version:\s*([^,}\s]+)') { $rVersion = $Matches[1].Trim() }
        if ($line -match 'status:\s*([^,}\s]+)') { $rStatus = $Matches[1].Trim() }
        if ($rPath -notmatch '/$') {   # skip layer dirs
            $registryRows[$rPath] = @{ Name = $rName; Version = $rVersion; Status = $rStatus }
        }
    }
}

# ---- Pass 3: cross-check both directions ----
foreach ($a in $artifacts) {
    # archived-status artifacts outside archive/ are a spec smell but allowed pre-move; flag only registry issues here
    if (-not $registryRows.ContainsKey($a.Path)) {
        $failures.Add("$($a.Path) : governed artifact not listed in registry/index.yaml")
        continue
    }
    $row = $registryRows[$a.Path]
    if ($row.Name -ne $a.Name) { $failures.Add("$($a.Path) : registry name '$($row.Name)' != frontmatter '$($a.Name)'") }
    if ($row.Version -and $a.Version -and $row.Version -ne $a.Version) { $failures.Add("$($a.Path) : registry version $($row.Version) != frontmatter $($a.Version)") }
    if ($row.Status -and $a.Status -and $row.Status -ne $a.Status) { $failures.Add("$($a.Path) : registry status '$($row.Status)' != frontmatter '$($a.Status)'") }
}

foreach ($rPath in $registryRows.Keys) {
    if (-not (Test-Path (Join-Path $root ($rPath.Replace('/', '\'))))) {
        $failures.Add("registry/index.yaml : listed path does not exist: $rPath")
    }
}

# ---- Report ----
if ($failures.Count -eq 0) {
    Write-Output ("registry lint: CLEAN ({0} governed artifacts, {1} registry rows)" -f $artifacts.Count, $registryRows.Count)
    exit 0
}
else {
    Write-Output ("registry lint: {0} VIOLATION(S)" -f $failures.Count)
    $failures | ForEach-Object { Write-Output ("  " + $_) }
    exit 1
}
