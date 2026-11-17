# custom_inventory_database_BQ
Synthetic pet and livestock inventory data in BigQuery. The dim_products and dim_vendors tables are linked by a foreign key (primary_vendor_id) that points to the primary key (vendor_id). BigQuery declares these keys as NOT ENFORCED, so integrity is validated with SQL queries that check for duplicate IDs and products with no matching vendor
