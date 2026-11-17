CREATE TABLE `courseraproject1-498420.pet_livestock_tracking.dim_products`
(
  product_id STRING(15) NOT NULL OPTIONS(description="PROD-DPT-000"),
  SKU STRING(15) NOT NULL OPTIONS(description="SKU-SC-SKU#"),
  product_name STRING(150) NOT NULL,
  location STRING(20) NOT NULL OPTIONS(description="'Pet' or 'Livestock'"),
  sub_category STRING(30) NOT NULL OPTIONS(description="'Equine', 'Cattle', 'Poultry', 'Canine Dry', 'Canine Wet', 'Feline Dry', 'Feline Wet'"),
  species STRING(30) NOT NULL OPTIONS(description="'Horse', 'Pig', 'Goat', 'Chicken', 'Duck',  'Dog', 'Cat'"),
  packaging_type STRING(30) NOT NULL OPTIONS(description="'50lb', '40lb', '28lb', '18lb', '12oz can', '5oz can', '3oz can'"),
  unit_weight NUMERIC(6, 2) NOT NULL OPTIONS(description="weight"),
  reorder_point INT64 NOT NULL OPTIONS(description="stock number required to reorder"),
  safety_stock_qty INT64 NOT NULL OPTIONS(description="buffer for missed orders"),
  target_stock_qty INT64 NOT NULL OPTIONS(description="Maximum ceiling, Shelf capacity"),
  primary_vendor_id STRING(10) NOT NULL OPTIONS(description="vendor id foreign key to reference vendor table");

CREATE TABLE `courseraproject1-498420.pet_livestock_tracking.dim_vendors`
(
  vendor_ID STRING(10) NOT NULL OPTIONS(description="numerical id for vendor"),
  vendor_name STRING(50) NOT NULL OPTIONS(description="name of distributor"),
  vendor_type STRING(30) NOT NULL OPTIONS(description="'\n'Feed Mill' or 'Pet Food'"),
  lead_time_days INT64 NOT NULL OPTIONS(description="time between order and delivery"),
  freight_min_lbs NUMERIC(10, 2) NOT NULL OPTIONS(description="minimum weight required to order", rounding_mode="ROUND_HALF_AWAY_FROM_ZERO"),
  freight_min_cost NUMERIC(10, 2) NOT NULL OPTIONS(description="minimum cost to order", rounding_mode="ROUND_HALF_EVEN");

