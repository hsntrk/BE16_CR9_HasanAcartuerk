
-- 1.Report
-- How many customers with the first name beginns with "C"?

SELECT COUNT(customer.first_name) FROM customer WHERE first_name LIKE "C%";


-- 2.Report
-- How many products do we have inside products?

SELECT count(product.name) FROM product;


-- 3.Report
-- How many products have price higher than 500 and who is the seller company and which city is it located, what is the name of the product?

SELECT company.name, address_company.city, product.name
FROM company
JOIN product_sale on product_sale.product_sale_id = company.company_id
JOIN product on product.product_id = product_sale.product_sale_id
JOIN address_company ON address_company.address_company_id = company.company_id
WHERE company.company_id IN (SELECT product.product_id FROM product WHERE product.price > 500);


-- 4.Report
-- Which product was ordered between this date 2022-07-10 and 2022-07-19 and who bought it?

SELECT customer.first_name, customer.last_name, product.name
FROM customer
JOIN `order` ON `order`.order_id = customer.customer_id
JOIN order_details ON order_details.order_details_id = `order`.order_id
JOIN product ON product.product_id = order_details.order_details_id
WHERE `order`.order_date > "2022-07-09" AND `order`.`order_date` <= "2022-07-12";


-- 5.Report
-- Which product were sold to "Thailand", and who is the buyer, when this costumer have birthday?

SELECT customer.first_name, customer.last_name, customer.birth_date, product.name, address_deliver.country
FROM customer
JOIN address_deliver ON address_deliver.address_deliver_id = customer.customer_id
JOIN `order` ON `order`.order_id = customer.customer_id
JOIN order_details ON order_details.order_details_id = `order`.order_id
JOIN product ON product.product_id = order_details.order_details_id
WHERE address_deliver.country LIKE "Thailand";


--6.Report
-- Who were shipping the ordered products with product_id and which shipper did not has any request yet?

SELECT shipper.shipper_id, shipper.shipper_name, `order`.order_date, product.product_id
FROM shipper
LEFT JOIN `order` ON `order`.order_id = shipper.shipper_id
LEFT JOIN order_details ON order_details.order_details_id = `order`.order_id
LEFT JOIN product ON product.product_id = order_details.order_details_id


--7.Report
-- Which customer already bought in the category with the title "Smartphone" a product?

SELECT customer.first_name, customer.last_name, product.name, category.title
FROM customer
JOIN `order` ON `order`.order_id = customer.customer_id
JOIN order_details ON order_details.order_details_id = `order`.order_id
JOIN product ON product.product_id = order_details.order_details_id
JOIN category ON category.category_id = customer.customer_id
WHERE category.title LIKE "Smartphone";


-- 8.Report 
-- Who is still waiting for his delivery from the current_date, who is the customer, what is the addressname for his invoice, which product and color of the product they bought, who is the seller company name of these products?


SELECT customer.first_name, customer.last_name, address_invoice.streetname, address_invoice.zip, address_invoice.city, address_invoice.country, product.name, product.color, company.name
FROM customer
JOIN address_invoice ON address_invoice.address_invoice_id = customer.customer_id
JOIN `order` ON `order`.order_id = customer.customer_id
JOIN order_details ON order_details.order_details_id = `order`.order_id
JOIN product ON product.product_id = order_details.order_details_id
JOIN product_sale ON product_sale.product_sale_id = product.product_id
JOIN company ON company.company_id = product_sale.product_sale_id
WHERE `order`.`ship_required` > CURRENT_DATE;


