SELECT
    naics_code,
    naics_title,
    AVG(emission_factor_with_margins) AS avg_emission_factor_with_margins,
    AVG(margin_impact) AS avg_margin_impact
FROM {{ ref('int_emission_enriched') }}
GROUP BY naics_code, naics_title