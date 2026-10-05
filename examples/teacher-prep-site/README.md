# 教师备课资料站模板

这是给 AIHOT 引擎使用的行业配置模板，不包含上游完整源码。初始化脚本会固定拉取 AIHOT 提交 `9acad0c3d7687d9210c2b7774f83799dfd36734b`，再把本目录的配置复制到目标项目。

## 初始化

Windows PowerShell：

```powershell
..\..\scripts\init-aihot.ps1 -Target C:\work\teacher-prep-site
```

Linux/macOS：

```bash
../../scripts/init-aihot.sh /opt/teacher-prep-site
```

初始化后，在目标项目复制 `.env.example` 为 `.env`，填写 `ADMIN_PASSWORD`、`LLM_BASE_URL`、`LLM_MODEL` 和 `LLM_API_KEY`。支持 DeepSeek 或硅基流动的 OpenAI 兼容接口。密钥只放在本机或服务器环境变量中。

## 内容约定

默认示例围绕高职机电课程，但课程、专业、年级和学期只是可编辑示例。生产信源应先在后台预览，确认标题、链接和发布时间后再启用。

精选摘要必须包含原文链接和发布日期；教学建议单独标记为模型生成内容，不得伪装成原文事实。

## 验收

先用 `demo-data.json` 和假模型跑通采集、筛选、分类、搜索和日报，再启用真实 RSS/JSON 信源。RSS、公开 API、MCP 和管理员权限的验证结果应写入目标项目的运行记录。
