-- ========================================================
-- VIEW: Master Executive Comparative Scorecard
-- ========================================================
CREATE VIEW IF NOT EXISTS master_platform_scorecard AS
SELECT 
    o.Platform,
    c.City_Tier,
    COUNT(o.Order_ID) AS Total_Orders,
    ROUND(AVG(o.Delivery_Time_Mins), 2) AS Avg_Delivery_Time,
    ROUND(AVG(p.Price_INR), 2) AS Avg_SKU_Price
FROM fact_ops o
JOIN dim_cities c ON o.City = c.City_Name
JOIN fact_prices p ON o.City = p.City AND o.Platform = p.Platform
GROUP BY o.Platform, c.City_Tier;