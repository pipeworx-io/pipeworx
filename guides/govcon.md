# Government Contracting with Pipeworx

## Connect (scoped to government contracting)

```json
{
  "mcpServers": {
    "pipeworx": {
      "url": "https://gateway.pipeworx.io/mcp?task=government+contracts+federal"
    }
  }
}
```

Or use `ask_pipeworx` from the full gateway — it will find the right tools automatically.

## Examples

### Palantir government profile

```
govcon_contractor_profile({ company_name: "Palantir" })
```

### Cybersecurity contract opportunities

```
govcon_opportunity_scan({ keywords: "cybersecurity" })
```

### NASA contracting landscape

```
govcon_agency_landscape({ agency: "NASA" })
```

### 8(a) set-aside IT contracts

```
govcon_opportunity_scan({ keywords: "IT services", set_aside: "8A" })
```

## Compound tools (start here)

- `govcon_contractor_profile` — Vet a government contractor's registration, federal awards, and spending history. Returns certifications, past performance, award amounts, and contrac
- `govcon_opportunity_scan` — Search open government contracts and grants by keyword or agency. Returns matching opportunities, set-asides (e.g., 8(a), HUBZone, SDVOSB), deadline d
- `govcon_agency_landscape` — Get contracting activity and market insights for a federal agency (e.g., 'Department of Defense', 'NASA'). Returns spending trends, recent awards, SBI

## Individual tools

### Samgov
- `sam_search_opportunities` — Search active federal contract opportunities by keyword, NAICS code (e.g., "541512"), set-aside type, posting date range, and procurement type. Return
- `sam_get_opportunity` — Get full details for a federal contract opportunity by solicitation number. Returns description, contact info, deadlines, attachments, NAICS codes, an
- `sam_entity_search` — Search registered federal contractors by business name or UEI. Returns UEI, CAGE code, address, NAICS codes, small business status, and certifications
- `sam_set_aside_opportunities` — Find federal contracts reserved for small businesses (women-owned, HUBZone, service-disabled veteran-owned, etc.). Returns titles, deadlines, and agen

### Usaspending
- `usa_spending_by_agency` — Break down federal spending by agency for a fiscal year (optionally by quarter). Returns spending amounts per agency. Use when analyzing budget distri
- `usa_award_search` — Search federal contract awards by keywords, agency, date range, or industry code (e.g., '541511' for IT consulting). Returns recipient, award amount, 
- `usa_spending_by_category` — Analyze federal spending by industry, product/service, recipient, or agency. Returns spending totals per category. Use for market research and identif
- `usa_recipient_profile` — Get a contractor's complete federal spending history within a date range. Returns all contract awards and total amounts. Use to research supplier rela
- `usa_spending_trends` — Track federal spending trends over time by keywords or agency, grouped by fiscal year, quarter, or month. Returns historical spending amounts for budg

### Sbir
- `sbir_search_awards` — Search SBIR/STTR awards by keyword, agency (e.g., "DOD", "NASA"), year, company, or state. Returns company name, award amount, agency, topic, abstract
- `sbir_get_award` — Get full details for a specific SBIR/STTR award by ID. Returns company, award amount, agency, abstract, phase, and metadata.
- `sbir_search_solicitations` — Find active SBIR/STTR funding opportunities by keyword or agency (e.g., "DOD", "NSF"). Returns topic descriptions, sponsoring agency, and open/close d
- `sbir_company_awards` — Get complete SBIR/STTR award history for a company. Returns all awards with amounts, agencies, topics, and funding phases.
- `sbir_agency_stats` — Get SBIR/STTR award counts by agency. Specify agency (e.g., "DOD", "NASA", "NSF") or omit to see all major agencies.
