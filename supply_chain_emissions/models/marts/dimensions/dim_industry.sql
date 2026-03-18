SELECT DISTINCT
    naics_code,
    naics_title,
    useeio_code
FROM {{ ref('stg_supply_chain_emissions') }}