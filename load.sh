#!/usr/bin/env bash

PGOPTIONS="--search_path=dbt_annie"                                                                                                
export PGOPTIONS                                                                                                                     
                                                                                                                                     
psql -d annie -c "DROP TABLE IF EXISTS raw_data;"                                                                                 
psql -d annie -c "CREATE TABLE raw_data (                                                                                         
    \"Data Source\"   text,                                                                                                 
    \"Order ID\"      text,
    \"Campaign ID\"   text,
    \"Campaign Name\" text,
\"Month\"                      text,
\"Quarter\"                    text,
\"Sales Team Name\"            text,
\"Sales User Name\"            text,
\"Allocated Customer ID\"       text,
\"Allocated Customer Name\"     text,
\"Allocated Customer Name EN\"  text,
\"Advertiser Customer ID\"      text,
\"Advertiser TAX ID\"           text,
\"Advertiser Name\"             text,
\"Advertiser Name EN\"          text,
\"Advertiser Business Type\"    text,
\"Debtor Customer ID\"          text,
\"Debtor TAX ID\"               text,
\"Debtor Name\"                 text,
\"Debtor Name EN\"              text,
\"Billing Account ID\"          text,
\"Deal Type\"                   text,
\"Sales Channel\"               text,
\"Product Category Name\"       text,
\"Service Category\"            text,
\"Product Details\"             text,
\"Product Name\"                text,
\"Rebase Rate\"                 text,
\" Gross Revenue\"              text,
\" Net Revenue\"                text,
\"IO Status\"                   text,
\"EIO Status\"                  text,
\" Product Gross Price\"        text,
\"Terms Start Date\"            text,
\"Terms End Date\"              text,
\"Data Version\"                text,
\"Booking Order ID\"            text,
\"LINE Entity\"                 text,
\"Sales Team ID\"               text,
\"Sales User ID\"               text, 
\"Currency\"                    text,  
\"Product Detail ID\"           text,
\"Force Allocation\"            text, 
\"Product Category ID\"         text, 
\"Service Category ID\"         text,
\"Sales Nick Name\"             text, 
\"Force Revenue\"               text,  
\"Performance Consultant\"      text,
\"Note\"                        text,
\"Service Category_New\"        text, 
\"Sales_New\"                   text,
\"團績\"                        text,  
\"個績\"                        text,
\"IA Product\"                  text,
\"Account/Display/Point\"       text 
);"

psql -d annie -c "\copy raw_data FROM '/Users/laurence/Downloads/raw_data.csv' HEADER CSV;"
