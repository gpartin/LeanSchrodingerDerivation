$ErrorActionPreference = 'Stop'

Write-Output '[1/3] Building SCHRODINGER-013'
lake build SchrodingerFormal.Core.Schrodinger013FullStrictCertificate
if ($LASTEXITCODE -ne 0) { throw 'Lean failed for SCHRODINGER-013' }

Write-Output '[2/3] Building the public package facade'
lake build SchrodingerFormal
if ($LASTEXITCODE -ne 0) { throw 'Lean failed for the public package facade' }

Write-Output '[3/3] Auditing promoted Lean sources'
$leanFiles = Get-ChildItem -Recurse -File -Filter '*.lean' SchrodingerFormal
$joined = ($leanFiles | ForEach-Object { Get-Content -Raw $_.FullName }) -join "`n"
if ($joined -match '\bsorry\b|\badmit\b|^\s*axiom\b') {
  throw 'unfinished proof or undeclared axiom found in promoted sources'
}
Write-Output '[PASS] SCHRODINGER-013 compiles and source audit passes'
