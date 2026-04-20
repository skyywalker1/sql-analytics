SELECT segment, 
       ROUND(AVG(login_count + purchase_count * 2 + email_clicks * 0.5), 2) AS engagement_score
FROM customer_segments
GROUP BY segment
ORDER BY engagement_score DESC;
