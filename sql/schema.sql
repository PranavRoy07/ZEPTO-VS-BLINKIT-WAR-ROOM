-- ========================================================
-- SCHEMA: Table Definitions + Core Relational Mapping
-- ========================================================
CREATE TABLE IF NOT EXISTS dim_cities (
    City_Name TEXT PRIMARY KEY,
    State TEXT,
    City_Tier TEXT
);

CREATE TABLE IF NOT EXISTS fact_ops (
    Order_ID TEXT PRIMARY KEY,
    Platform TEXT,
    Timestamp TEXT,
    Delivery_Time_Mins REAL,
    City TEXT,
    FOREIGN KEY(City) REFERENCES dim_cities(City_Name)
);

CREATE TABLE IF NOT EXISTS fact_prices (
    SKU_Name TEXT,
    Platform TEXT,
    Price_INR REAL,
    City TEXT,
    FOREIGN KEY(City) REFERENCES dim_cities(City_Name)
);