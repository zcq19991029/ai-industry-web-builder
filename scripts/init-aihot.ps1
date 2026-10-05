param(
  [Parameter(Mandatory=$true)][string]$Target,
  [string]$Ref = "9acad0c3d7687d9210c2b7774f83799dfd36734b"
)
$ErrorActionPreference = "Stop"
$repo = "https://github.com/KKKKhazix/AIHOT.git"
$root = Split-Path -Parent $PSScriptRoot
if (Test-Path $Target) { throw "目标目录已存在：$Target" }
git clone --filter=blob:none $repo $Target
Set-Location $Target
git checkout $Ref
Copy-Item "$root\examples\teacher-prep-site\.env.example" .env.example -Force
Copy-Item "$root\examples\teacher-prep-site\industry" industry -Recurse -Force
Copy-Item "$root\examples\teacher-prep-site\site" site -Recurse -Force
Write-Host "已初始化教师备课模板：$Target"
Write-Host "下一步：复制 .env.example 为 .env，填写管理员密码和模型配置。"
