# Sevn的 AI Skills 集合

## 集合

- [anthropics-skills](https://github.com/anthropics/skills)
- [vercel-labs/agent-skills](https://github.com/vercel-labs/agent-skills)
- [skills.sh](https://skills.sh/)
- [AI-research-SKILLs](https://github.com/Orchestra-Research/AI-research-SKILLs)
- [skillstore.io](https://skillstore.io/zh-hans/skills?tools=claude)
- [awesome-claude-skills](https://github.com/ComposioHQ/awesome-claude-skills)

## 精选 skills

- [ui-ux-pro-max-skill](https://github.com/nextlevelbuilder/ui-ux-pro-max-skill): 为构建专业UI/UX多个平台提供设计智能的AI Skill
  - `npm install -g uipro-cli`
  - `uipro init --ai opencode`
- [agent-browser](https://github.com/vercel-labs/agent-browser)
  - `npx skills add https://github.com/vercel-labs/agent-browser --skill agent-browser`
- [browser-use](https://github.com/browser-use/browser-use)
  - `npx skills add https://github.com/browser-use/browser-use --skill browser-use`

## 精选plugins

- [opencode-supermemory](https://github.com/supermemoryai/opencode-supermemory)、[supermemory官网](https://console.supermemory.ai/onboarding)
- [opencode-browser](https://github.com/different-ai/opencode-browser)
- [mem0](https://github.com/mem0ai/mem0)
- [superpowers](https://github.com/obra/superpowers)
  - Claude Code、Cursor、Codex、OpenCode
- [claude_code_bridge](https://github.com/bfly123/claude_code_bridge)
  - 实时多 AI 协作，让 claude 给 codex 指派任务

## opencode 配置

1. 自动压缩（Compaction）
    `~/.config/opencode/opencode.json`中优化这些参数

    ```json
    {
    "compaction": {
        "auto": true,           // 开启自动压缩
        "strategy": "summarize", // 压缩策略：可选择 summarize（总结）或 prune（直接裁剪）
        "threshold": 0.8,       // 当上下文占用到 80% 时触发
        "prune_tool_outputs": true // 优先清理工具执行的冗余输出
    },
    "cache": {
        "provider": "auto", 
        "enabled": true
    }
    }
    ```
