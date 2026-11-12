
-- =========================================================
-- NoShowGuard | Part 2.1
-- Database Creation and Table Schema
-- =========================================================

-- Create database
CREATE DATABASE IF NOT EXISTS noshowguard;

-- Select database
USE noshowguard;

-- =========================================================
-- Table 1: Clinics
-- =========================================================

CREATE TABLE IF NOT EXISTS clinics (
    clinic_id VARCHAR(10) PRIMARY KEY,
    clinic_name VARCHAR(100) NOT NULL,
    city VARCHAR(50) NOT NULL,
    latitude DECIMAL(10,6),
    longitude DECIMAL(10,6),
    temp_c DECIMAL(5,2)
);

-- =========================================================
-- Table 2: Appointments
-- =========================================================

CREATE TABLE IF NOT EXISTS appointments (
    appointment_id VARCHAR(20) PRIMARY KEY,
    patient_id VARCHAR(20) NOT NULL,
    clinic_id VARCHAR(10) NOT NULL,
    booked_on DATE NOT NULL,
    appt_date DATE NOT NULL,
    age INT NOT NULL,
    gender VARCHAR(20),
    distance_km DECIMAL(6,1),
    fee_inr INT,
    booking_channel VARCHAR(30),
    visit_type VARCHAR(30),
    reminder_sent VARCHAR(10),
    prior_no_shows INT,
    status VARCHAR(20) NOT NULL,
    lead_days INT,
    no_show TINYINT NOT NULL,

    CONSTRAINT fk_appointments_clinics
        FOREIGN KEY (clinic_id)
        REFERENCES clinics(clinic_id)
);

-- =========================================================
-- Verify table structure
-- =========================================================

DESCRIBE clinics;

DESCRIBE appointments;
