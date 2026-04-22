# CLAUDE.md Template for Pipeworx

Drop this into any project's `CLAUDE.md` to give Claude access to live data.

## The template

```markdown
## Live Data Access

This project has access to live data via Pipeworx (https://gateway.pipeworx.io/mcp).

When you need real-time data — economic indicators, SEC filings, drug safety records,
trade flows, weather, or any of 900+ data sources — use the Pipeworx MCP connection.

Key tools:
- \`ask_pipeworx({ question: "your question" })\` — ask anything in plain English
- \`discover_tools({ query: "topic" })\` — find relevant tools
- \`remember/recall\` — save findings across tool calls

For focused analysis, scope the connection:
- Housing: https://gateway.pipeworx.io/mcp?task=housing+market
- Trade: https://gateway.pipeworx.io/mcp?task=international+trade
- Finance: https://gateway.pipeworx.io/mcp?task=financial+research
- Pharma: https://gateway.pipeworx.io/mcp?task=drug+safety
```

## MCP config to add alongside CLAUDE.md

```json
{
  "mcpServers": {
    "pipeworx": {
      "url": "https://gateway.pipeworx.io/mcp"
    }
  }
}
```

## Why this works

When Claude sees "use Pipeworx" in CLAUDE.md, it knows to:
1. Call `ask_pipeworx` for data questions instead of saying "I don't have access"
2. Use `discover_tools` to find the right endpoint
3. Use compound tools for multi-source analysis
