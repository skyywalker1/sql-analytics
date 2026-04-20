SELECT
  DATE_TRUNC('month', signup_date) AS cohort_month,
  COUNT(*) AS customers_in_cohort,
  SUM(CASE WHEN status = 'CHURNED' THEN 1 ELSE 0 END) AS churned_customers,
  SUM(CASE WHEN status = 'CHURNED' THEN 1 ELSE 0 END) *
