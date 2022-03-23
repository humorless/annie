with rd as (
  select * from {{ source('raw', 'raw_data') }}
),
pal as (
  select * from {{ ref('primary_account_list') }}
)
select
  "Data Source" as data_source,
  "Sales Team Name" as sales_team_name,
  "Campaign Name" as campaign_name,
  "Campaign ID" as campaign_id,
  "Advertiser Customer ID_new" as advertiser_customer_id,
  "Advertiser TAX ID_new" as advertiser_tax_id,
  "Advertiser Name_new" as advertiser_name
from
  rd
  left join pal
  on rd."Campaign ID" = pal."Campaign ID_new"
