SELECT
  customer_id,
  COUNT(*) AS past_due_count,
  SUM(invoice_amount) AS past_due_balance
FROM invoices
WHERE status = 'PAST_DUE'
GROUP BY customer_id
HAVING COUNT(*) >= 2
ORDER BY past_due_balance DESC;
