param([string]$Root = (Split-Path -Parent $PSScriptRoot))
$ErrorActionPreference = "Stop"
$required = @("SKILL.md", "README.md", "examples/teacher-prep-site/demo-data.json", "examples/teacher-prep-site/industry/sources.json", "examples/teacher-prep-site/industry/prompts/selection-score.md", "examples/teacher-prep-site/site/site.json")
foreach ($path in $required) { if (-not (Test-Path (Join-Path $Root $path))) { throw "Missing file: $path" } }
Get-Content (Join-Path $Root "examples/teacher-prep-site/demo-data.json") -Raw | ConvertFrom-Json | Out-Null
Get-Content (Join-Path $Root "examples/teacher-prep-site/industry/sources.json") -Raw | ConvertFrom-Json | Out-Null
Get-Content (Join-Path $Root "examples/teacher-prep-site/site/site.json") -Raw | ConvertFrom-Json | Out-Null
Write-Host "Template structure and JSON validation passed."
