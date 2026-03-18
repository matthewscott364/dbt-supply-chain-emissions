SELECT
    CAST(naics_code AS string) AS naics_code,
    TRIM(naics_title) AS naics_title,
    TRIM(ghg_category) AS ghg_category,
    TRIM(emission_unit) AS emission_unit,
    CAST(emission_factor_without_margins AS decimal(18,6)) AS emission_factor_without_margins,
    CAST(margin_emission_factor AS decimal(18,6)) AS margin_emission_factor,
    CAST(emission_factor_with_margins AS decimal(18,6)) AS emission_factor_with_margins,
    TRIM(useeio_code) AS useeio_code
FROM {{ source('sustainability_raw', 'raw_supply_chain_emission_factors') }}