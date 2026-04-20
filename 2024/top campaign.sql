SELECT campaign_id, 
       campaign_name, 
       COUNT(open_id) AS open_count, 
       COUNT(click_id) AS click_count, 
       ROUND((COUNT(click_id) * 100.0) / COUNT(open_id), 2) AS click_through_rate
FROM campaign_data
GROUP BY campaign_id
ORDER BY click_through_rate DESC
LIMIT 10;
