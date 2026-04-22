# Financial Research with Pipeworx

## Connect (scoped to financial research)

```json
{
  "mcpServers": {
    "pipeworx": {
      "url": "https://gateway.pipeworx.io/mcp?task=financial+research+SEC+banking"
    }
  }
}
```

Or use `ask_pipeworx` from the full gateway — it will find the right tools automatically.

## Examples

### Deep dive on Apple

```
fintech_company_deep_dive({ ticker: "AAPL" })
```

### Is JPMorgan healthy?

```
fintech_bank_health_check({ bank_name: "JPMorgan Chase" })
```

### Market conditions snapshot

```
fintech_market_snapshot({})
```

### Apple 10-K filings

```
edgar_company_filings({ ticker: "AAPL", type: "10-K", limit: 3 })
```

## Compound tools (start here)

- `fintech_company_deep_dive` — Analyze a fintech company's financials, risk profile, and regulatory history by stock ticker (e.g., "AAPL"). Returns SEC filings, income statements, s
- `fintech_bank_health_check` — Assess a bank's financial health, risk profile, and regulatory status by name (e.g., "JPMorgan Chase"). Returns FDIC data, balance sheets, compliance 
- `fintech_market_snapshot` — Check current financial market conditions. Returns complaint trends, banking sector summary, fed funds rate, Treasury yields, yield curve, credit spre

## Individual tools

### Edgar
- `edgar_search_filings` — Search SEC filings by keyword, company name, or topic. Filter by form type (e.g., '10-K', '8-K') and date range. Returns filing metadata, accession nu
- `edgar_company_filings` — Get recent SEC filings for a company by ticker (e.g., 'AAPL') or CIK number. Filter by form type (e.g., '10-Q', '10-K'). Returns filing dates, types, 
- `edgar_company_facts` — Get structured financial data for a company by CIK number. Returns revenue, net income, assets, liabilities, and other key metrics with annual and his
- `edgar_company_concept` — Track a specific financial metric over time for a company by CIK number (e.g., revenue, net income). Returns all reported values with dates and filing
- `edgar_ticker_to_cik` — Convert a stock ticker (e.g., 'TSLA') to its CIK number. Returns the CIK identifier and company name for use in other edgar tools.

### Cfpb
- `cfpb_search_complaints` — Search consumer complaints by keyword, company, product, or date range. Returns complaint narratives, company responses, and resolution status.
- `cfpb_company_complaints` — Get recent complaints against a specific company (e.g., 'Wells Fargo'). Returns narratives, company responses, and resolution details sorted newest fi
- `cfpb_get_complaint` — Retrieve full details for a specific complaint by ID. Returns narrative, company response, resolution status, and metadata.
- `cfpb_top_companies` — Find companies with the most complaints in a date range. Returns ranked list with company names and complaint counts.
- `cfpb_product_breakdown` — Get complaint counts by product category (e.g., 'Credit Card', 'Mortgage'). Filter by company or date range.

### Fdic
- `fdic_search_institutions` — Search FDIC-insured banks by name. Returns institution name, CERT ID, location, total assets, deposits, net income, ROA, ROE, and report date.
- `fdic_get_institution` — Get detailed profile for an FDIC-insured bank (e.g., CERT "5136"). Returns name, location, assets, deposits, and regulatory details.
- `fdic_financials` — Get quarterly financial metrics for a bank by CERT ID. Returns assets, deposits, net income, interest income, loan losses, ROA, ROE, efficiency ratio.
- `fdic_failures` — Search FDIC bank failures by date range. Returns bank name, location, CERT ID, failure date, acquiring institution, and fund type.
- `fdic_summary` — Get industry-wide totals for all FDIC-insured banks on a reporting date. Returns total assets, deposits, net income, interest income, loan count, inst

### Alphavantage
- `av_quote` — Get real-time stock price for a symbol (e.g., "AAPL"). Returns current price, change, percent change, and trading volume.
- `av_daily` — Get daily stock price history for a symbol (e.g., "AAPL"). Returns open, high, low, close, volume for recent days or full 20+ year history.
- `av_overview` — Get company fundamentals for a symbol (e.g., "AAPL"). Returns sector, market cap, P/E ratio, EPS, dividend yield, 52-week range, and analyst ratings.
- `av_income_statement` — Get annual and quarterly income statements for a symbol (e.g., "AAPL"). Returns revenue, gross profit, operating income, net income, and EBITDA.
- `av_balance_sheet` — Get annual and quarterly balance sheets for a symbol (e.g., "AAPL"). Returns total assets, liabilities, equity, cash, and debt.
- `av_earnings` — Get quarterly earnings data for a symbol (e.g., "AAPL"). Returns reported and estimated EPS, surprise amount, and surprise percentage.

### Fred
- `fred_get_series` — Fetch historical data points for an economic indicator by series ID (e.g., 'MORTGAGE30US' for 30-year mortgage rate, 'HOUST' for housing starts). Retu
- `fred_search` — Search for economic data series by keyword. Returns series IDs, titles, and descriptions to identify the right indicator.
- `fred_series_info` — Get metadata for a series: title, units, frequency, seasonal adjustment, notes, and date range. Check this before fetching historical data.
- `fred_category` — Browse economic data by category (housing, employment, money/banking, etc.). Returns subcategories and related series IDs.
- `fred_releases` — Check upcoming and recent economic data releases. Returns release dates, names, and which series they update.
