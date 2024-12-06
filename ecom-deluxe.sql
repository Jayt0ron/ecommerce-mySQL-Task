CREATE TABLE customers(
	customers_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(50),
    phone_number VARCHAR(20),
    address VARCHAR(20),
    state VARCHAR(20)
);

CREATE TABLE products(
	product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(20),
    product_descript VARCHAR(100),
    price FLOAT(50),
    stock_quantity VARCHAR(20),
    product_date TIMESTAMP
);

CREATE TABLE orders(
	order_id INT AUTO_INCREMENT PRIMARY KEY,
	order_date VARCHAR(20),
    order_status VARCHAR(20),
    order_amount VARCHAR(20),
    customers_id INT,
    FOREIGN KEY (customers_id) REFERENCES customers(customers_id)
);

CREATE TABLE order_items(
	order_details_id INT AUTO_INCREMENT PRIMARY KEY,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id),
    quantity_order VARCHAR(20)
);
# Customers insert rows
INSERT INTO `ecommerce`.`customers`
(`customers_id`,
`first_name`,
`last_name`,
`email`,
`phone_number`,
`address`,
`state`)
VALUES
(52,
'Joe',
'Kerr',
'joekerr86@website.com',
123-345-6789 ,
'123 Place St',
'PA ');
# Insert Row 2
INSERT INTO `ecommerce`.`customers`
(`customers_id`,
`first_name`,
`last_name`,
`email`,
`phone_number`,
`address`,
`state`)
VALUES
(99,
'Miguel',
"O'Hara",
'miguelohara2099@verse.org',
'009-017-2010',
'599 Place st',
'NY');
# Insert Row 3
INSERT INTO `ecommerce`.`customers`
(`customers_id`,
`first_name`,
`last_name`,
`email`,
`phone_number`,
`address`,
`state`)
VALUES
(13,
'Luke',
'Fox',
'lukefox2008@wayneent.org',
'098-765-5432',
'915 Park Row',
'NJ');

