# ai-industry-web-builder

中文 Codex Skill：帮助你从零开发行业型 AI 网站，或把 AIHOT 改成自己的行业热点站。

## 首版能力

- 通用行业型 AI 网页开发流程
- 教师备课资料站模板
- 高职机电行业资讯站模板
- 日报、周报、月报、RSS、API、MCP 和 Agent 内容出口的扩展规范
- `examples/teacher-prep-site/`：固定 AIHOT 版本的教师备课配置、演示数据和初始化脚本
- `examples/mechatronics-site/`：PLC、单片机、机器人和智能制造行业配置

本项目借鉴 [AIHOT](https://github.com/KKKKhazix/AIHOT) 的公开架构思想，不使用 AIHOT 的名称、Logo、信源名单或运营数据。

## 安装

将本目录复制到 Codex Skill 目录：

```powershell
Copy-Item -Recurse . C:\Users\25466\.codex\skills\ai-industry-web-builder
```

更新时重新拉取仓库并覆盖本地目录即可。Skill 默认支持自动发现，也可以在请求中写 `$ai-industry-web-builder`。

## 使用示例

```text
请使用 ai-industry-web-builder，从零开发一个高职机电行业资讯站。
关注 PLC、单片机、工业机器人、智能制造和实训设备。
需要网页、搜索、热点排行、每日 8 点日报、RSS 和 MCP。
先给出数据流、页面结构、信源方案和最小可运行版本计划。
```

```text
请使用 ai-industry-web-builder，把 AIHOT 改成教师备课资料站。
关注课程标准、教材、职业教育政策、竞赛通知和技术资料。
要求按课程和教学主题分类，并生成教师可直接使用的摘要。
完成后运行类型检查、测试和冒烟测试。
```

## 参数接口

`project_mode`：`new_site` 或 `customize_aihot`；`industry`：教师备课、高职机电或自定义行业；`sources`：RSS、网页列表、JSON API、X、公众号、外部推送；`outputs`：网页、日报、周报、月报、RSS、API、MCP；`deployment`：local、docker、self_hosted。

## 文档

- [推荐架构](references/architecture.md)
- [六类模板](references/templates.md)
- [提示词与评测](references/prompts-and-evaluation.md)
- [信源接入](references/sources.md)
- [API、RSS 与 MCP](references/mcp-and-api.md)
- [部署与验证](references/deployment.md)
- [AIHOT 改造](references/customize-aihot.md)

## 开发检查

提交前检查 Skill frontmatter、参考文档链接、中文示例和两个模板试用结果。网页项目本身还应执行类型检查、测试和冒烟测试，并分别验证“构建成功”和“真实访问成功”。

## 生成可运行项目

教师备课模板通过脚本固定拉取 AIHOT 提交 `9acad0c3d7687d9210c2b7774f83799dfd36734b`，不会把上游完整源码复制到本仓库：

```powershell
./scripts/init-aihot.ps1 -Target C:\work\teacher-prep-site
```

```bash
./scripts/init-aihot.sh /opt/teacher-prep-site
```

模板默认关闭采集和模型调用，先用本地演示数据验收。需要真实摘要时，在目标项目 `.env` 中配置 DeepSeek 或硅基流动的 OpenAI 兼容地址、模型和密钥。未安装 Docker 的电脑只能完成文档、配置和脚本检查；Linux Docker 运行需另行验证。

## 许可证

MIT。详见 [LICENSE](LICENSE)。
