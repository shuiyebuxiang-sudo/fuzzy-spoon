$ErrorActionPreference = "Stop"

$source = Split-Path -Parent $MyInvocation.MyCommand.Path
$target = Join-Path $HOME ".codex\skills"
New-Item -ItemType Directory -Force -Path $target | Out-Null

$skills = @(
  "trade-docs-helper",
  "trade-message-reader",
  "trade-reply-writer",
  "trade-shipment-checker",
  "trade-quote-pi-maker",
  "trade-order-tracker",
  "trade-price-checker",
  "trade-customer-developer"
)

foreach ($skill in $skills) {
  $src = Join-Path $source $skill
  $dst = Join-Path $target $skill
  if (-not (Test-Path -LiteralPath $src)) {
    throw "Missing skill folder: $src"
  }
  if (Test-Path -LiteralPath $dst) {
    Remove-Item -LiteralPath $dst -Recurse -Force
  }
  Copy-Item -LiteralPath $src -Destination $dst -Recurse
  Write-Host "Installed $skill"
}

Write-Host "Done. Restart Codex to load the skills."
