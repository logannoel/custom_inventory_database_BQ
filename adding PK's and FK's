--add primary key to products table, constraints are informational, 'NOT ENFORCED' creates extra validation
ALTER TABLE courseraproject1-498420.pet_livestock_tracking.dim_products
  ADD PRIMARY KEY (product_id) NOT ENFORCED;

--add promary key to vendor table, contraints are informational, 'NOT ENFORCED' creates extra validation
ALTER TABLE courseraproject1-498420.pet_livestock_tracking.dim_vendors
  ADD PRIMARY KEY (vendor_id) NOT ENFORCED;ALTER TABLE `courseraproject1-498420.pet_livestock_tracking.dim_products`

--add foreign key to product table
ADD CONSTRAINT fk_products_vendor
  FOREIGN KEY (primary_vendor_id)
  REFERENCES `courseraproject1-498420.pet_livestock_tracking.dim_vendors`(vendor_id) NOT ENFORCED;
