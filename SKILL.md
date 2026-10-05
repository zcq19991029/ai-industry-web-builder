---
name: ai-industry-web-builder
description: 用于从零开发或改造行业型 AI 网站，覆盖信源采集、内容筛选、事件聚类、日报周报、网页、RSS、API 与 MCP 出口。适用于教师备课资料站、高职机电资讯站及相似行业内容产品。
metadata:
  short-description: 行业型 AI 网页开发与 AIHOT 改造
---

# 行业型 AI 网页开发

当用户要开发行业资讯站、资料站、AI 日报系统，或把 AIHOT 改成自己的行业网站时使用本 Skill。支持两种模式：`new_site` 从零设计，`customize_aihot` 基于 AIHOT 配置和扩展。

## 工作方式

1. 先确认 `project_mode`、行业、目标用户、信源、输出渠道和部署方式。缺失时只询问会改变架构的事项。
2. 把需求拆成信源、内容、编辑、事件、发布和后台运维六层，并先给出数据流和页面清单。
3. 优先配置行业规则和提示词，再编写通用代码。行业知识放在配置或模块中，不写死在框架。
4. 页面读取已经处理好的内容；模型调用、抓取、聚类和出刊放到后台任务队列。
5. 为网页、RSS、API、MCP 和 Agent Markdown 使用同一公开读取层，并保留来源、原文链接和事实证据。
6. 对付费模型或外部服务实现回执、缓存、幂等重试和预算熔断；失败时给出可诊断的运行记录。
7. 完成后运行类型检查、测试、冒烟测试，并验证真实页面、采集结果、内容出口和部署状态。

## 读取参考资料

- 架构和数据流：阅读 [references/architecture.md](references/architecture.md)。
- 模板选择：阅读 [references/templates.md](references/templates.md)。
- 提示词与评测：阅读 [references/prompts-and-evaluation.md](references/prompts-and-evaluation.md)。
- 信源配置：阅读 [references/sources.md](references/sources.md)。
- API、RSS、MCP：阅读 [references/mcp-and-api.md](references/mcp-and-api.md)。
- 部署：阅读 [references/deployment.md](references/deployment.md)。
- AIHOT 改造：阅读 [references/customize-aihot.md](references/customize-aihot.md)。

## 输出要求

每次交付都要说明网站功能、页面结构、信源方案、分类标签、筛选提示词、评分门槛、任务流、开发文件、测试命令、部署验证和仍需用户决定的行业规则。默认优先完成可运行的最小版本，再扩展模块。
