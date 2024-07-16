-- Brand 테이블
CREATE TABLE Brand (
    brand_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    shipping_fee DECIMAL(10, 2)
);
-- Product 테이블
CREATE TABLE Product (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_code VARCHAR(50) UNIQUE,
    name VARCHAR(100),
    type VARCHAR(50),
    color VARCHAR(30),
    brand_id INT,
    `option` VARCHAR(50),
    size VARCHAR(20),
    stock INT,
    FOREIGN KEY (brand_id) REFERENCES Brand(brand_id)
);
-- Order 테이블
CREATE TABLE `Order` (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    order_date DATE,
    total_amount DECIMAL(10, 2),
    discount_amount DECIMAL(10, 2),
    shipping_fee DECIMAL(10, 2),
    order_status VARCHAR(50),
    delivery_address VARCHAR(255)
);

-- OrderDetail 테이블
CREATE TABLE OrderDetail (
    order_detail_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    price DECIMAL(10, 2),
    FOREIGN KEY (order_id) REFERENCES `Order`(order_id),
    FOREIGN KEY (product_id) REFERENCES Product(product_id)
);
-- Order 테이블
CREATE TABLE `Order` (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    order_date DATE,
    total_amount DECIMAL(10, 2),
    discount_amount DECIMAL(10, 2),
    shipping_fee DECIMAL(10, 2),
    order_status VARCHAR(50),
    delivery_address VARCHAR(255)
);

-- OrderDetail 테이블
CREATE TABLE OrderDetail (
    order_detail_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    price DECIMAL(10, 2),
    FOREIGN KEY (order_id) REFERENCES `Order`(order_id),
    FOREIGN KEY (product_id) REFERENCES Product(product_id)
);

-- User 테이블
CREATE TABLE `User` (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50),
    password VARCHAR(255),
    email VARCHAR(100),
    phone_number VARCHAR(20)
);

-- PageViewLog 테이블
CREATE TABLE PageViewLog (
    log_id INT AUTO_INCREMENT PRIMARY KEY,
    access_timestamp TIMESTAMP,
    user_id INT,
    page VARCHAR(255),
    FOREIGN KEY (user_id) REFERENCES `User`(user_id)
);



































