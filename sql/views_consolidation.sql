-- Executive Master View Consolidation
CREATE VIEW IF NOT EXISTS master_platform_scorecard AS
SELECT 
    Platform,
    City_Tier,
    COUNT(Order_ID) AS Total_Orders,
    ROUND(AVG(Delivery_Time_Mins), 2) AS Avg_Delivery_Time
FROM fact_ops
GROUP BY Platform, City_Tier;