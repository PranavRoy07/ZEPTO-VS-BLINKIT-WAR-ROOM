-- ========================================================
-- VIEW: Geographical Tier Delivery Breakdown Analysis
-- ========================================================
CREATE VIEW IF NOT EXISTS delivery_by_tier AS
SELECT 
    o.Platform,
    c.City_Tier,
    ROUND(MIN(o.Delivery_Time_Mins), 2) AS Min_Delivery_Time,
    ROUND(AVG(o.Delivery_Time_Mins), 2) AS Avg_Delivery_Time,
    ROUND(MAX(o.Delivery_Time_Mins), 2) AS Max_Delivery_Time,
    ROUND(AVG(o.Delivery_Time_Mins), 2) AS Baseline_Speed_Mean
FROM fact_ops o
JOIN dim_cities c ON o.City = c.City_Name
GROUP BY o.Platform, c.City_Tier;