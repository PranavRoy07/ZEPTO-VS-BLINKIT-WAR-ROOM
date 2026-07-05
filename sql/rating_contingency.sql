-- ========================================================
-- VIEW: Star-Rating Cross-Tabulation Distribution Matrix
-- ========================================================
CREATE VIEW IF NOT EXISTS rating_contingency AS
SELECT 
    Platform,
    SUM(CASE WHEN Star_Rating = 1 THEN 1 ELSE 0 END) AS "1_Star",
    SUM(CASE WHEN Star_Rating = 2 THEN 1 ELSE 0 END) AS "2_Star",
    SUM(CASE WHEN Star_Rating = 3 THEN 1 ELSE 0 END) AS "3_Star",
    SUM(CASE WHEN Star_Rating = 4 THEN 1 ELSE 0 END) AS "4_Star",
    SUM(CASE WHEN Star_Rating = 5 THEN 1 ELSE 0 END) AS "5_Star",
    COUNT(*) AS Total_Reviews
FROM fact_customer_reviews
GROUP BY Platform;