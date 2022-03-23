select distinct
       "Campaign ID_new", 
       "Advertiser Customer ID_new",
       "Advertiser TAX ID_new",
       "Advertiser Name_new"
from {{ ref('account_list') }}

