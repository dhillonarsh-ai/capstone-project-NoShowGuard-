-- =====================================================
-- 2.2 Clinic-wise No-Show Rate
-- =====================================================

SELECT
    c.clinic_name,
    c.city,
    COUNT(a.appointment_id) AS total_appointments,
    SUM(a.no_show) AS total_no_shows,
    ROUND(
        SUM(a.no_show) * 100.0 / COUNT(a.appointment_id),
        1
    ) AS no_show_rate_pct
FROM clinics c
JOIN appointments a
    ON c.clinic_id = a.clinic_id
GROUP BY
    c.clinic_id,
    c.clinic_name,
    c.city
HAVING COUNT(a.appointment_id) >= 95
ORDER BY no_show_rate_pct DESC;