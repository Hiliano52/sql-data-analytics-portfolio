SQL
-- Project 3: Operations SLA Compliance & Resolution Speed Metrics
SELECT 
    agent_id,
    COUNT(*) AS total_tickets_handled,
    ROUND(AVG(resolution_time_hours), 2) AS avg_handling_time_hours,
    ROUND(
        (SUM(CASE WHEN sla_met = TRUE THEN 1 ELSE 0 END) * 100.0) / COUNT(*), 
        2
    ) AS sla_compliance_pct
FROM ticket_logs
WHERE resolution_date >= '2026-01-01'
GROUP BY agent_id
HAVING COUNT(*) >= 20
ORDER BY sla_compliance_pct DESC;
