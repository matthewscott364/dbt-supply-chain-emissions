SELECT
    f.naics_code,
    d.naics_title,
    d.useeio_code,
    f.ghg_category,
    f.emission_unit,
    f.emission_factor_without_margins,
    f.margin_emission_factor,
    f.emission_factor_with_margins,
    f.emission_factor_with_margins - f.emission_factor_without_margins AS margin_impact,
    CASE
        WHEN f.emission_factor_with_margins >= 1.000000 THEN 'High'
        WHEN f.emission_factor_with_margins >= 0.250000 THEN 'Medium'
        ELSE 'Low'
    END AS emission_intensity_band
FROM {{ ref('fct_emission_factors') }} f
LEFT JOIN {{ ref('dim_industry') }} d
    ON f.naics_code = d.naics_code