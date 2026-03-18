SELECT
    naics_code,
    ghg_category,
    emission_unit,
    emission_factor_without_margins,
    margin_emission_factor,
    emission_factor_with_margins
FROM {{ ref('stg_supply_chain_emissions') }}