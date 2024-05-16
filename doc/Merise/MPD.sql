-- Table Customers
CREATE TABLE Customers (
    customer_id SERIAL PRIMARY KEY,
    lastname VARCHAR(50) NOT NULL,
    firstname VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    address VARCHAR(100) NOT NULL
);

-- Table Orders
CREATE TABLE Orders (
    order_id SERIAL PRIMARY KEY,
    total_price DECIMAL(10, 2) NOT NULL,
    CONSTRAINT fk_order_id_customer FOREIGN KEY (customer_id)
    REFERENCES Customers (customer_id)
);
CREATE INDex idx_order_id_customer ON Orders (customer_id);

-- Table Products
CREATE TABLE Products (
    product_id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    price DECIMAL(5, 2) NOT NULL,
    stock INT NOT NULL
);

-- Table d'association Orders-Products ('include')
CREATE TABLE OrdersProducts (
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    PRIMARY KEY (order_id, product_id),
    CONSTRAINT fk_orderproduct_order FOREIGN KEY (order_id)
    REFERENCES Orders (order_id),
    CONSTRAINT fk_orderproduct_product FOREIGN KEY (product_id)
    REFERENCES Products (product_id)
);
CREATE INDEX fk_orderproduct_id_order ON OrdersProducts (order_id);
CREATE INDEX fk_orderproduct_id_product ON OrdersProducts (product_id);