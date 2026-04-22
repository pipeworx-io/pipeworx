# Drug & Pharma Research with Pipeworx

## Connect (scoped to drug & pharma research)

```json
{
  "mcpServers": {
    "pipeworx": {
      "url": "https://gateway.pipeworx.io/mcp?task=drug+safety+clinical+trials"
    }
  }
}
```

Or use `ask_pipeworx` from the full gateway — it will find the right tools automatically.

## Examples

### Everything about ozempic

```
pharma_drug_profile({ drug_name: "ozempic" })
```

### Lung cancer clinical trial pipeline

```
pharma_pipeline_scan({ condition: "lung cancer" })
```

### Aspirin safety profile

```
pharma_safety_report({ drug_name: "aspirin" })
```

### Pfizer's clinical trials

```
pharma_pipeline_scan({ sponsor: "Pfizer" })
```

## Compound tools (start here)

- `pharma_drug_profile` — Look up a drug's FDA approval status, dosage forms, interactions, and active trials. Returns approval dates, formulations, known drug interactions, an
- `pharma_pipeline_scan` — Search clinical trials by condition (e.g., "lung cancer") or sponsor (e.g., "Pfizer"). Returns trial phases, recruitment status, and approved treatmen
- `pharma_safety_report` — Check adverse event frequency, severity patterns, and contraindications for a drug. Returns safety profiles, risk data, and recall history. E.g., sear

## Individual tools

### Clinicaltrials
- `ct_search` — Search clinical trials by keyword, condition, status (e.g., 'Recruiting'), or phase (e.g., 'Phase 2'). Returns NCT IDs, titles, status, enrollment, an
- `ct_get_study` — Get full trial details by NCT ID (e.g., 'NCT04567890'). Returns protocol, eligibility criteria, primary outcomes, sponsor, locations, and results.
- `ct_count_by_condition` — Count trials for a condition (e.g., 'diabetes'). Returns breakdown by status and phase for landscape analysis.
- `ct_sponsor_trials` — List all trials by sponsor or organization name. Returns status, phase, and conditions to map research pipelines.
- `ct_recent_updates` — Get recently posted or updated trials sorted by date. Returns NCT IDs, titles, status changes, and conditions.

### Openfda
- `fda_drug_events` — Search adverse event reports for drugs by name, reaction type, or date range. Returns event counts, reaction types, seriousness levels, and dates.
- `fda_drug_approvals` — Find FDA-approved drugs by brand name, generic name, or application number (e.g., "ANDA123456"). Returns approval status, sponsor, and application det
- `fda_drug_labels` — Get drug safety information from FDA labels by drug name. Returns indications, warnings, dosage, contraindications, and adverse reactions.
- `fda_drug_recalls` — Search FDA drug recalls and enforcement actions by drug name or reason. Returns recall classification, date, and enforcement status.
- `fda_event_counts` — Aggregate adverse events by reaction type, patient age, or outcome. Returns top reactions for a drug and event trends over time.

### Rxnorm
- `rxnorm_search` — Search for medications by brand or generic name. Returns RxCUI IDs, names, synonyms, and term types (BN=brand, IN=ingredient, SBD=dose form). Start he
- `rxnorm_get_properties` — Get full medication details by RxCUI ID. Returns name, synonyms, term type, language, and status. Use after rxnorm_search to retrieve complete drug in
- `rxnorm_related` — Find related medications by RxCUI — brands, generics, ingredients, and dose forms. Maps between brand and generic alternatives. Use to compare drug op
- `rxnorm_interactions` — Check drug-drug interactions by RxCUI. Returns interaction pairs and severity levels. Use to identify safety risks when combining medications.
- `rxnorm_ndc` — Get NDC (National Drug Code) identifiers by RxCUI. Returns unique US pharmacy codes for billing and fulfillment. Use for prescription processing or in
