#!/usr/bin/env bash
set -euo pipefail
target="${1:?用法: init-aihot.sh <目标目录>}"
ref="9acad0c3d7687d9210c2b7774f83799dfd36734b"
root="$(cd "$(dirname "$0")/.." && pwd)"
if [[ -e "$target" ]]; then echo "目标目录已存在：$target" >&2; exit 1; fi
git clone --filter=blob:none https://github.com/KKKKhazix/AIHOT.git "$target"
git -C "$target" checkout "$ref"
cp "$root/examples/teacher-prep-site/.env.example" "$target/.env.example"
cp -R "$root/examples/teacher-prep-site/industry" "$target/industry"
cp -R "$root/examples/teacher-prep-site/site" "$target/site"
echo "已初始化教师备课模板：$target"
