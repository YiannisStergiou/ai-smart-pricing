-- stores
CREATE TABLE stores (
    store_id    SERIAL PRIMARY KEY,
    name        VARCHAR(100) NOT NULL,
    website_url VARCHAR(255)
);

-- products
CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    barcode    VARCHAR(100) UNIQUE,
    name       VARCHAR(255) NOT NULL,
    brand      VARCHAR(100),
    category   VARCHAR(100)
);

-- price history
CREATE TABLE price_history (
    id SERIAL PRIMARY KEY,
    product_id INTEGER REFERENCES products(product_id),
    store_id   INTEGER REFERENCES stores(store_id),
    current_price NUMERIC(10, 2) NOT NULL,
    is_in_stock   BOOLEAN,
    scraping_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

