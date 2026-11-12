
USE noshowguard;

WITH clinic_rates AS (
    SELECT
        c.city,
        c.clinic_name,
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
        c.city,
        c.clinic_id,
        c.clinic_name
),

overall_rate AS (
    SELECT
        ROUND(AVG(no_show) * 100.0, 2) AS overall_no_show_rate
    FROM appointments
)

SELECT
    cr.city,
    cr.clinic_name,
    cr.total_appointments,
    cr.total_no_shows,
    cr.no_show_rate_pct,

    RANK() OVER (
        PARTITION BY cr.city
        ORDER BY cr.no_show_rate_pct DESC
    ) AS clinic_rank_in_city,

    orr.overall_no_show_rate,

    CASE
        WHEN cr.no_show_rate_pct > orr.overall_no_show_rate
            THEN 'Above Overall Rate'
        WHEN cr.no_show_rate_pct < orr.overall_no_show_rate
            THEN 'Below Overall Rate'
        ELSE 'Equal to Overall Rate'
    END AS benchmark_comparison

FROM clinic_rates cr
CROSS JOIN overall_rate orr

ORDER BY
    cr.city,
    clinic_rank_in_city;
