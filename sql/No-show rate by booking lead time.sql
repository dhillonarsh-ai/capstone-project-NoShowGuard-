
USE noshowguard;

SELECT
    CASE
        WHEN lead_days BETWEEN 1 AND 7 THEN '1-7 days'
        WHEN lead_days BETWEEN 8 AND 14 THEN '8-14 days'
        WHEN lead_days BETWEEN 15 AND 30 THEN '15-30 days'
        WHEN lead_days >= 31 THEN '31+ days'
        ELSE 'Invalid / Other'
    END AS lead_time_category,

    COUNT(appointment_id) AS total_appointments,

    SUM(no_show) AS total_no_shows,

    ROUND(
        SUM(no_show) * 100.0 / COUNT(appointment_id),
        1
    ) AS no_show_rate_pct

FROM appointments

GROUP BY lead_time_category

ORDER BY
    CASE lead_time_category
        WHEN '1-7 days' THEN 1
        WHEN '8-14 days' THEN 2
        WHEN '15-30 days' THEN 3
        WHEN '31+ days' THEN 4
        ELSE 5
    END;
