# Housing Market Analysis with Pipeworx

## Connect (scoped to housing market analysis)

```json
{
  "mcpServers": {
    "pipeworx": {
      "url": "https://gateway.pipeworx.io/mcp?task=housing+market+analysis"
    }
  }
}
```

Or use `ask_pipeworx` from the full gateway — it will find the right tools automatically.

## Examples

### What is the current 30-year mortgage rate?

```
fred_get_series({ series_id: "MORTGAGE30US" })
```

### Get a market snapshot

```
housing_market_snapshot({})
```

### Analyze 123 Main St, Denver CO

```
housing_property_report({ address1: "123 Main St", address2: "Denver, CO 80202" })
```

### Check housing affordability in Miami metro

```
housing_affordability_check({ metro: "Miami" })
```

## Compound tools (start here)

- `housing_market_snapshot` — Get national housing market overview: mortgage rates, housing starts, Case-Shiller index, unemployment, construction employment. Optionally add metro-
- `housing_property_report` — Analyze a property by address and zip code. Returns valuation estimate, sales history, tax assessment, and detailed characteristics.
- `housing_rental_analysis` — Evaluate rental investment potential by address and zip code. Returns estimated rent, fair market rents, and CPI rent trends.
- `housing_affordability_check` — Check housing affordability in a market. Returns mortgage rate, median price, monthly payment, required income, and HUD limits. Optionally specify met
- `housing_employment_outlook` — Assess labor market health for housing demand. Returns employment, construction jobs, residential building employment, unemployment rate, and job open
- `housing_signal_scan` — Scan 45+ housing indicators for anomalies and reversals. Flags unusual moves across rates, starts, sales, prices, wages, unemployment, and rent.

## Individual tools

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

### Attom
- `attom_property_detail` — Get detailed property specs by address. Returns lot size, square footage, bedrooms, bathrooms, year built, construction type, and heating/cooling syst
- `attom_property_search` — Search properties by location using postal code (e.g., '10001') or latitude/longitude with radius. Returns matching addresses and property IDs.
- `attom_sales_history` — Get past sales for a property. Returns sale dates, prices, deed types, and buyer/seller details from recent transactions.
- `attom_avm` — Estimate property market value. Returns estimated value, confidence score, and low/high range for valuation analysis.
- `attom_assessment` — Check property tax assessment details. Returns assessed value, market value, tax amount, tax year, and historical trends.
- `attom_sales_trend` — Analyze market sales trends by ZIP code. Returns average/median sale price, sales volume, and price changes over time.
- `attom_rental_avm` — Estimate rental property income. Returns estimated monthly rent, rental yield percentage, and rental value range.
- `attom_school_search` — Find schools near a location. Returns school name, type (public/private), grade levels, distance, and performance rankings.

### Hud
- `hud_fair_market_rents` — Get Fair Market Rent ceilings by bedroom count (0–4+) for a specific area and year. Returns rent limits by bedroom count. Use to set voucher payment s
- `hud_income_limits` — Check income eligibility thresholds (extremely low, very low, low-income) for HUD programs by area and family size. Returns income limits by category.
- `hud_crosswalk` — Map ZIP codes to census tracts, counties, CBSAs, and congressional districts. Returns geographic identifiers. Use to translate between location code f
- `hud_chas` — Get housing affordability data by income level and family type. Returns household counts with cost burdens, overcrowding, and housing problems. Use fo
- `hud_list_states` — List all U.S. state codes and names. Returns state abbreviations and full names. Use to validate or discover state codes for other HUD tools.
