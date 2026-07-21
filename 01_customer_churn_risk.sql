SQL
-- Project 1: Identifying High-Risk B2B Accounts via Support Ticket Aggregation
SELECT 
    c.customer_id,
    c.company_name,
    COUNT(t.ticket_id) AS total_escalated_tickets,
    ROUND(AVG(t.resolution_time_hours), 2) AS avg_resolution_time_hours
FROM customers c
INNER JOIN tickets t ON c.customer_id = t.customer_id
WHERE t.status IN ('RESOLVED', 'OPEN')
  AND t.created_at >= '2026-01-01'
GROUP BY 
    c.customer_id, 
    c.company_name
HAVING COUNT(t.ticket_id) > 5 
   AND AVG(t.resolution_time_hours) > 24.0
ORDER BY total_escalated_tickets DESC;
