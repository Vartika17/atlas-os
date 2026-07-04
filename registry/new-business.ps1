# Atlas OS business instantiation — kills manual toil from compile test 01 (F2).
# Copies the genome template, renames frontmatter _template-* -> <slug>-*,
# and emits ready-to-paste registry rows. Zero dependencies; PS 5.1.
#
# Usage:  powershell -File registry\new-business.ps1 -Slug nazaria -Stage validating
# Then:   review the printed registry rows, paste into registry/index.yaml,
#         author the core-5 genome, run registry\lint.ps1.
#
# Does NOT touch git or index.yaml automatically — instantiation is a
# deliberate act; the human pastes the rows after reviewing (Art. VIII spirit).

param(
    [Parameter(Mandatory = $true)][string]$Slug,
    [ValidateSet('idea', 'validating', 'operating', 'scaling')]
    [string]$Stage = 'validating'
)

$ErrorActionPreference = 'Stop'
$root = Split-Path $PSScriptRoot -Parent
$src = Join-Path $root 'businesses\_template'
$dst = Join-Path $root "businesses\$Slug"
$enc = New-Object System.Text.UTF8Encoding($false)   # UTF-8 no BOM (ops rule)

if (-not (Test-Path $src)) { throw "template missing: $src" }
if (Test-Path $dst) { throw "business already exists: $dst" }

# 1. Copy template
Copy-Item -Recurse $src $dst

# 2. Rename frontmatter names _template-* -> <slug>-*
$core5 = @('DNA.md', 'positioning.md', 'personas.md', 'offers.md', 'metrics.md')
$rows = New-Object System.Collections.Generic.List[string]

Get-ChildItem "$dst\*.md" | ForEach-Object {
    $text = [IO.File]::ReadAllText($_.FullName, [Text.Encoding]::UTF8)
    $text = $text -replace 'name: _template-', "name: $Slug-"
    [IO.File]::WriteAllText($_.FullName, $text, $enc)

    # gather registry facts
    $name = if ($text -match '(?m)^name:\s*(.+)$') { $Matches[1].Trim() } else { "$Slug-unknown" }
    $ver = if ($text -match '(?m)^version:\s*(.+)$') { $Matches[1].Trim() } else { '1.0.0' }
    $tier = if ($core5 -contains $_.Name) { 'core-5' } else { 'above-tier stub' }
    $relPath = "businesses/$Slug/$($_.Name)"
    $rows.Add(("      - {{name: {0}, path: {1}, type: genome-doc, version: {2}, status: draft}}   # {3}" -f $name, $relPath, $ver, $tier))
}

# 3. Emit paste-ready registry block
Write-Output ""
Write-Output "Business '$Slug' created at businesses/$Slug ($Stage stage)."
Write-Output ""
Write-Output "PASTE under 'businesses:' in registry/index.yaml:"
Write-Output ""
Write-Output "  - name: $Slug"
Write-Output "    stage: $Stage"
Write-Output "    status: draft"
Write-Output "    genome:"
$rows | Sort-Object | ForEach-Object { Write-Output $_ }
Write-Output ""
$req = if ($Stage -eq 'validating') { 'core-5 (DNA, positioning, personas, offers, metrics)' } else { 'full genome' }
Write-Output "NEXT: author the $req with honest content ([VERIFY] owner-only facts),"
Write-Output "      paste the rows above, then run: powershell -File registry\lint.ps1"
