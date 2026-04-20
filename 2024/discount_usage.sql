SELECT discount_code, 
       COUNT(DISTINCT customer_id) AS users_count, 
       ROUND((COUNT(DISTINCT customer_id) * 100.0) / (SELECT COUNT(*) FROM customers), 2) AS discount_usage_percentage
FROM subscriptions 
WHERE discount_code IS NOT NULL 
  AND subscription_date > DATE_SUB(CURRENT_DATE, INTERVAL 1 YEAR)
GROUP BY discount_code;
