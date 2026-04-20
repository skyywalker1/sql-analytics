SELECT
  u.line_id,
  c.customer_id,
  p.plan_name,
  SUM(u.data_gb) AS total_data_gb_30d
FROM usage_daily u
JOIN lines l ON l.line_id = u.line_id
JOIN customers c ON c.customer_id = l.customer_id
JOIN plans p ON p.plan_id = l.plan_id
WHERE u.usage_date >= CURRENT_DATE - INTERVAL '30 day'
  AND l.status = 'ACTIVE'
GROUP BY u.line_id, c.customer_id, p.plan_name
HAVING SUM(u.data_gb) >= 0.9 * MAX(p.data_cap_gb)
ORDER BY total_data_gb_30d DESC;
