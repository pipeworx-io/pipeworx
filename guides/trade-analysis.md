# International Trade Analysis with Pipeworx

## Connect (scoped to international trade analysis)

```json
{
  "mcpServers": {
    "pipeworx": {
      "url": "https://gateway.pipeworx.io/mcp?task=international+trade+analysis"
    }
  }
}
```

Or use `ask_pipeworx` from the full gateway — it will find the right tools automatically.

## Examples

### US-China bilateral trade

```
trade_bilateral_analysis({ reporter_code: "842", partner_code: "156" })
```

### Top US trading partners

```
trade_country_profile({ country_code: "842" })
```

### US trade macro dashboard

```
trade_macro_dashboard({})
```

### US trade deficit with China

```
census_trade_balance({ country_code: "5700", year: "2024" })
```

## Compound tools (start here)

- `trade_bilateral_analysis` — Compare trade flows between two countries. Returns bilateral imports, exports, top commodities, and exchange rates. Use country codes (e.g., 842 for U
- `trade_country_profile` — Get a country's trade snapshot: top 10 import/export partners and top 10 commodities. Use country codes (e.g., 842 for US, 156 for China, 276 for Germ
- `trade_macro_dashboard` — Check US trade indicators: customs revenue, exchange rates, trade balance, monthly trends, price indices, and goods/services breakdown.

## Individual tools

### Comtrade
- `comtrade_trade_data` — Get bilateral trade data between two countries (e.g., "840" for US, "156" for China). Returns trade values, quantities, and commodity details for impo
- `comtrade_top_partners` — Find a country's top trading partners ranked by trade volume. Returns partner countries and total trade values.
- `comtrade_top_commodities` — Find top commodities traded between two countries ranked by value. Returns product categories and trade volumes.
- `comtrade_country_codes` — Look up country ISO numeric codes for trade queries (e.g., "840" = US, "156" = China). Returns code and country name pairs.

### Census Trade
- `census_imports` — Search US import data by HS commodity code (e.g., "8471" for computers) and/or country (e.g., "China"). Returns import values, quantities, and commodi
- `census_exports` — Search US export data by HS commodity code (e.g., "8471" for computers) and/or country (e.g., "Mexico"). Returns export values, quantities, and commod
- `census_trade_balance` — Check US trade balance with a specific country for a given year. Returns net trade value and breakdown by end-use commodity category.
- `census_trade_trends` — Get monthly US trade trends for a commodity and/or country over time. Returns month-by-month values to identify seasonal patterns and shifts.

### Treasury Fiscal
- `treasury_customs_revenue` — Track monthly US customs duty revenue. Returns monthly collection amounts to analyze tariff impact trends.
- `treasury_receipts` — Get US government receipts by source: individual income tax, corporate tax, excise taxes, customs duties, and more.
- `treasury_debt` — Check current US national debt with historical data points. Returns total public debt outstanding over time.
- `treasury_exchange_rates` — Get official US Treasury exchange rates for any currency (e.g., 'EUR', 'GBP', 'JPY'). Returns rates used for government conversions.

### Fred
- `fred_get_series` — Fetch historical data points for an economic indicator by series ID (e.g., 'MORTGAGE30US' for 30-year mortgage rate, 'HOUST' for housing starts). Retu
- `fred_search` — Search for economic data series by keyword. Returns series IDs, titles, and descriptions to identify the right indicator.
- `fred_series_info` — Get metadata for a series: title, units, frequency, seasonal adjustment, notes, and date range. Check this before fetching historical data.
- `fred_category` — Browse economic data by category (housing, employment, money/banking, etc.). Returns subcategories and related series IDs.
- `fred_releases` — Check upcoming and recent economic data releases. Returns release dates, names, and which series they update.

### Bls
- `bls_get_series` — Fetch historical time series data for employment, inflation, wages, productivity, or housing. Returns dated data points with values. Provide series ID
- `bls_search` — Search BLS economic data series by keyword. Returns matching series IDs and titles. Use bls_get_series with an ID to fetch historical data points.
- `bls_latest` — Get the most recent data point for a BLS series. Returns latest value and date. Use when you need current figures without historical context.
- `bls_popular_series` — Browse popular BLS series by category: employment, inflation, wages, housing, productivity. Returns series IDs and descriptions. Start here to explore
