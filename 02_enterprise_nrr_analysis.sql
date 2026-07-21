SQL
-- Project 2: Multi-Table Integration for Enterprise NRR & Portfolio Value
SELECT 
    c.customer_id,
    c.company_name,
    c.region,
    COUNT(s.subscription_id) AS active_products,
    SUM(s.arr_amount) AS total_arr_value
FROM customers c
INNER JOIN subscriptions s ON c.customer_id = s.customer_id
INNER JOIN contract_renewals r ON s.subscription_id = r.subscription_id
WHERE s.status = 'ACTIVE'
  AND r.renewal_year = 2026
GROUP BY 
    c.customer_id, 
    c.company_name, 
    c.region
HAVING SUM(s.arr_amount) >= 100000
ORDER BY total_arr_value DESC;
