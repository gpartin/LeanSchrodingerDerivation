$ErrorActionPreference = 'Stop'

Write-Output '[1/2] Building SCHRODINGER-006'
lake build SchrodingerFormal.Core.Schrodinger006SchrodingerRemainder
if ($LASTEXITCODE -ne 0) { throw 'Lean failed for SCHRODINGER-006' }

Write-Output '[2/2] Auditing promoted Lean sources'
$leanFiles = Get-ChildItem -Recurse -File -Filter '*.lean' SchrodingerFormal
$joined = ($leanFiles | ForEach-Object { Get-Content -Raw $_.FullName }) -join "`n"
if ($joined -match '\bsorry\b|\badmit\b|^\s*axiom\b') {
  throw 'unfinished proof or undeclared axiom found in promoted sources'
}
Write-Output '[PASS] SCHRODINGER-006 compiles and source audit passes'
