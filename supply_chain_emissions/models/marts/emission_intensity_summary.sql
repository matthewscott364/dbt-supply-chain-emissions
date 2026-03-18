SELECT
    emission_intensity_band,
    COUNT(*) AS industry_count,
    AVG(emission_factor_with_margins) AS avg_emission_factor_with_margins
FROM {{ ref('int_emission_enriched') }}
GROUP BY emission_intensity_band