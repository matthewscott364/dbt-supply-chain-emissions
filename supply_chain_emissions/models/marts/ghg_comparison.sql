SELECT
    ghg_category,
    AVG(emission_factor_without_margins) AS avg_emission_factor_without_margins,
    AVG(margin_emission_factor) AS avg_margin_component,
    AVG(emission_factor_with_margins) AS avg_with_margins
FROM {{ ref('int_emission_enriched') }}
GROUP BY ghg_category
