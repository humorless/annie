with rd as (
  select * from {{ source('raw', 'raw_data') }}
),
pal as (
  select * from {{ ref('primary_account_list') }}
)
select
  "Data Source",
  "Sales Team Name",
  "Campaign Name",
  "Campaign ID",
  "Advertiser Customer ID_new" as advertiser_customer_id,
  "Advertiser TAX ID_new" as advertiser_tax_id,
  "Advertiser Name_new" as advertiser_name
from
  rd
  left join pal
  on rd."Campaign ID" = pal."Campaign ID_new"
