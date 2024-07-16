-- Brand 테이블
CREATE TABLE Brand (
    brand_id NUMBER PRIMARY KEY,
    name VARCHAR2(100),
    shipping_fee NUMBER
);
-- Product 테이블
CREATE TABLE Product (
    product_id NUMBER PRIMARY KEY,
    product_code VARCHAR2(50) UNIQUE,
    product_name VARCHAR2(100),
    product_type VARCHAR2(50),
    color VARCHAR2(30),
    brand_id NUMBER,
    product_option VARCHAR2(50),
    product_size VARCHAR2(20),
    stock NUMBER,
    FOREIGN KEY (brand_id) REFERENCES Brand(brand_id)
);

-- Order 테이블
CREATE TABLE "Order" (
    order_id NUMBER PRIMARY KEY,
    user_id NUMBER,
    order_date DATE,
    total_amount NUMBER,
    discount_amount NUMBER,
    shipping_fee NUMBER,
    order_status VARCHAR2(50),
    delivery_address VARCHAR2(255)
);

-- OrderDetail 테이블
CREATE TABLE Order_Detail (
    order_detail_id NUMBER PRIMARY KEY,
    order_id NUMBER,
    product_id NUMBER,
    quantity NUMBER,
    price NUMBER,
    FOREIGN KEY (order_id) REFERENCES "Order"(order_id),
    FOREIGN KEY (product_id) REFERENCES Product(product_id)
);

-- User 테이블
CREATE TABLE User (
    user_id NUMBER PRIMARY KEY,
    name VARCHAR2(50),
    password VARCHAR2(255),
    email VARCHAR2(100),
    phone_number VARCHAR2(20)
);

-- PageViewLog 테이블
CREATE TABLE PageViewLog (
    log_id NUMBER PRIMARY KEY,
    access_timestamp TIMESTAMP,
    user_id NUMBER,
    page VARCHAR2(255),
    FOREIGN KEY (user_id) REFERENCES User(user_id)
);

















