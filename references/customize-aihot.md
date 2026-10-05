# AIHOT 改造步骤

先读 AIHOT 的 `README.md`、`AGENTS.md`、`docs/customize.md` 和架构文档。优先修改 `site/` 与 `industry/`：站名和文案放 `site/`，分类、主题、信源、提示词和门槛放 `industry/`。只有行业需要独有功能时才增加 `modules/`。

完成后检查信源预览、筛选样本、事件聚类、日报出刊、网页、RSS、API 和 MCP。运行项目提供的类型检查、测试和冒烟测试。部署时使用自己的名称、Logo、信源和运营数据，不使用 AIHOT 品牌资源。
