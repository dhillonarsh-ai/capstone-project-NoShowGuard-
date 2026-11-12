
USE noshowguard;

WITH monthly_metrics AS (
    SELECT
        DATE_FORMAT(appt_date, '%Y-%m') AS appointment_month,
        COUNT(appointment_id) AS total_appointments,
        SUM(no_show) AS total_no_shows,
        ROUND(
            SUM(no_show) * 100.0 / COUNT(appointment_id),
            1
        ) AS no_show_rate_pct
    FROM appointments
    GROUP BY DATE_FORMAT(appt_date, '%Y-%m')
)

SELECT
    appointment_month,
    total_appointments,
    total_no_shows,
    no_show_rate_pct,

    ROUND(
        no_show_rate_pct -
        LAG(no_show_rate_pct) OVER (
            ORDER BY appointment_month
        ),
        1
    ) AS change_vs_previous_month_pp

FROM monthly_metrics
ORDER BY appointment_month;
