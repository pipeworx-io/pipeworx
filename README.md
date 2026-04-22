# Pipeworx Examples

Guides and examples for using [Pipeworx](https://pipeworx.io) — the MCP gateway that connects AI agents to 252+ live data sources.

## Quick start

Add to your MCP client (Claude Desktop, Cursor, Windsurf, etc.):

```json
{
  "mcpServers": {
    "pipeworx": {
      "url": "https://gateway.pipeworx.io/mcp"
    }
  }
}
```

Then ask anything:

```
ask_pipeworx("What is the US trade deficit with China?")
→ $1.81 trillion deficit (2024, Census Bureau data)

ask_pipeworx("What are the side effects of ozempic?")
→ 54,647 FDA adverse event reports

ask_pipeworx("Get Apple's latest 10-K filing")
→ SEC EDGAR filing data
```

## Guides

| Guide | Description |
|-------|-------------|
| [Getting Started](guides/getting-started.md) | Connect Pipeworx to Claude Desktop, Cursor, or any MCP client |
| [Housing Market Analysis](guides/housing-analysis.md) | Mortgage rates, property valuations, market signals |
| [Trade Analysis](guides/trade-analysis.md) | Bilateral trade flows, deficits, tariff revenue |
| [Financial Research](guides/financial-research.md) | SEC filings, bank health, market conditions |
| [Drug Research](guides/drug-research.md) | Clinical trials, adverse events, drug interactions |
| [Government Contracting](guides/govcon.md) | Contract opportunities, contractor profiles, SBIR grants |
| [CLAUDE.md Template](guides/claude-md-template.md) | Drop-in CLAUDE.md to give any project access to live data |

## Compound tools

### Trade
- `trade_bilateral_analysis` — Compare trade flows between two countries. Returns bilateral imports, exports, top commodities, and exchange rates. Use country codes (e.g., 842 for U
- `trade_country_profile` — Get a country's trade snapshot: top 10 import/export partners and top 10 commodities. Use country codes (e.g., 842 for US, 156 for China, 276 for Germ
- `trade_macro_dashboard` — Check US trade indicators: customs revenue, exchange rates, trade balance, monthly trends, price indices, and goods/services breakdown.

### Fintech
- `fintech_company_deep_dive` — Analyze a fintech company's financials, risk profile, and regulatory history by stock ticker (e.g., "AAPL"). Returns SEC filings, income statements, s
- `fintech_bank_health_check` — Assess a bank's financial health, risk profile, and regulatory status by name (e.g., "JPMorgan Chase"). Returns FDIC data, balance sheets, compliance 
- `fintech_market_snapshot` — Check current financial market conditions. Returns complaint trends, banking sector summary, fed funds rate, Treasury yields, yield curve, credit spre

### Pharma
- `pharma_drug_profile` — Look up a drug's FDA approval status, dosage forms, interactions, and active trials. Returns approval dates, formulations, known drug interactions, an
- `pharma_pipeline_scan` — Search clinical trials by condition (e.g., "lung cancer") or sponsor (e.g., "Pfizer"). Returns trial phases, recruitment status, and approved treatmen
- `pharma_safety_report` — Check adverse event frequency, severity patterns, and contraindications for a drug. Returns safety profiles, risk data, and recall history. E.g., sear

### Govcon
- `govcon_contractor_profile` — Vet a government contractor's registration, federal awards, and spending history. Returns certifications, past performance, award amounts, and contrac
- `govcon_opportunity_scan` — Search open government contracts and grants by keyword or agency. Returns matching opportunities, set-asides (e.g., 8(a), HUBZone, SDVOSB), deadline d
- `govcon_agency_landscape` — Get contracting activity and market insights for a federal agency (e.g., 'Department of Defense', 'NASA'). Returns spending trends, recent awards, SBI

### Housing
- `housing_market_snapshot` — Get national housing market overview: mortgage rates, housing starts, Case-Shiller index, unemployment, construction employment. Optionally add metro-
- `housing_property_report` — Analyze a property by address and zip code. Returns valuation estimate, sales history, tax assessment, and detailed characteristics.
- `housing_rental_analysis` — Evaluate rental investment potential by address and zip code. Returns estimated rent, fair market rents, and CPI rent trends.
- `housing_affordability_check` — Check housing affordability in a market. Returns mortgage rate, median price, monthly payment, required income, and HUD limits. Optionally specify met
- `housing_employment_outlook` — Assess labor market health for housing demand. Returns employment, construction jobs, residential building employment, unemployment rate, and job open
- `housing_signal_scan` — Scan 45+ housing indicators for anomalies and reversals. Flags unusual moves across rates, starts, sales, prices, wages, unemployment, and rent.

## Links

- [pipeworx.io](https://pipeworx.io) — Website
- [gateway.pipeworx.io/mcp](https://gateway.pipeworx.io/mcp) — Gateway endpoint
- [Status](https://pipeworx.io/status) — Uptime dashboard
- [npm](https://www.npmjs.com/org/pipeworx) — All packages
