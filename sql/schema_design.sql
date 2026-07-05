-- Database Schema Configuration
CREATE TABLE IF NOT EXISTS fact_ops (
    Order_ID TEXT PRIMARY KEY,
    Platform TEXT,
    Timestamp TEXT,
    Delivery_Time_Mins REAL,
    City_Tier TEXT,
    City TEXT
);
CREATE TABLE IF NOT EXISTS fact_prices (
    SKU_Name TEXT,
    Platform TEXT,
    Price_INR REAL,
    City_Tier TEXT,
    City TEXT
);