SELECT month, 
       COUNT(DISTINCT CASE WHEN is_new_customer = 'yes' THEN customer_id ELSE NULL END) AS new_subscribers,
       COUNT(DISTINCT CASE WHEN is_new_customer = 'no' THEN customer_id ELSE NULL END) AS returning_subscribers
FROM subscribers
GROUP BY month
ORDER BY month;
