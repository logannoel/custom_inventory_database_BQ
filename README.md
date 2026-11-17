# custom_inventory_database_BQ
Synthetic pet and livestock inventory data in BigQuery. The dim_products and dim_vendors tables are linked by a foreign key (primary_vendor_id) that points to the primary key (vendor_id). BigQuery declares these keys as NOT ENFORCED, so integrity is validated with SQL queries that check for duplicate IDs and products with no matching vendor.

## Sample query: Using a join to find all products and their lead times. 

```sql
SELECT p.product_name, v.vendor_name, v.lead_time_days
FROM `courseraproject1-498420.pet_livestock_tracking.dim_products` p
JOIN `courseraproject1-498420.pet_livestock_tracking.dim_vendors` v
ON p.primary_vendor_id = v.vendor_ID
ORDER BY v.lead_time_days DESC;
```
<img width="1718" height="847" alt="JOIN_SQL" src="https://github.com/user-attachments/assets/5c326037-1682-483f-b527-123b338a8b7a" />
