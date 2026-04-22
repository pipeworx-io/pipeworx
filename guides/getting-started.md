# Getting Started with Pipeworx

Pipeworx gives your AI agent access to 252+ live data sources through one MCP connection. No API keys needed for most tools.

## 1. Connect

Add to your MCP client config:

```json
{
  "mcpServers": {
    "pipeworx": {
      "url": "https://gateway.pipeworx.io/mcp"
    }
  }
}
```

This gives your agent access to all 252 data sources. To scope to a specific domain:

```json
{
  "mcpServers": {
    "pipeworx-housing": {
      "url": "https://gateway.pipeworx.io/mcp?task=housing+market+analysis"
    }
  }
}
```

## 2. Ask anything

The simplest way to use Pipeworx:

```
ask_pipeworx({ question: "What is the current 30-year mortgage rate?" })
```

The gateway:
1. Finds the most relevant tool (fred_get_series for MORTGAGE30US)
2. Fills the arguments automatically
3. Returns the actual data

## 3. Discover tools

Browse available tools by describing what you need:

```
discover_tools({ query: "international trade data" })
→ comtrade_trade_data, census_trade_balance, trade_bilateral_analysis, ...
```

## 4. Use compound tools

Instead of calling 5 APIs separately, use compound tools that combine them:

```
trade_bilateral_analysis({ reporter_code: "842", partner_code: "156" })
→ US-China imports, exports, top commodities, exchange rates — all in one call
```

## 5. Remember findings

Save context across tool calls:

```
remember({ key: "target_company", value: "AAPL" })
recall({ key: "target_company" }) → "AAPL"
```

## Response metadata

Every response includes `_meta` with:
- **cost**: credits used with breakdown
- **cache**: whether the result was cached and when it expires
- **suggestions**: what to call next
- **alternatives**: if something fails, what to try instead
