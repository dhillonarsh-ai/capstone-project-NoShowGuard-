USE noshowguard;

SELECT COUNT(*) AS total_clinics
FROM clinics;

SELECT COUNT(*) AS total_appointments
FROM appointments;

SELECT COUNT(*) AS total_no_shows
FROM appointments
WHERE no_show = 1;