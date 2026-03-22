USE healthcare;

-- =====================================
-- 1. Patient - Doctor - Appointment View
-- =====================================
SELECT p.name AS patient, d.name AS doctor, a.appointment_date
FROM Appointment a
JOIN Patient p ON a.patient_id = p.patient_id
JOIN Doctor d ON a.doctor_id = d.doctor_id;

-- =====================================
-- 2. Patient Treatment Details
-- =====================================
SELECT p.name, t.diagnosis, t.prescription
FROM Patient p
JOIN Appointment a ON p.patient_id = a.patient_id
JOIN Treatment t ON a.appointment_id = t.appointment_id;

-- =====================================
-- 3. Doctor Workload (No. of Patients)
-- =====================================
SELECT d.name, COUNT(a.appointment_id) AS total_patients
FROM Doctor d
LEFT JOIN Appointment a ON d.doctor_id = a.doctor_id
GROUP BY d.name;

-- =====================================
-- 4. Total Revenue
-- =====================================
SELECT SUM(amount) AS total_revenue FROM Billing;

-- =====================================
-- 5. Revenue by Payment Status
-- =====================================
SELECT payment_status, SUM(amount) AS total_amount
FROM Billing
GROUP BY payment_status;

-- =====================================
-- 6. Complete Hospital View (All Connected)
-- =====================================
SELECT 
    p.name AS patient,
    d.name AS doctor,
    t.diagnosis,
    b.amount,
    b.payment_status
FROM Appointment a
JOIN Patient p ON a.patient_id = p.patient_id
JOIN Doctor d ON a.doctor_id = d.doctor_id
JOIN Treatment t ON a.appointment_id = t.appointment_id
JOIN Billing b ON a.appointment_id = b.appointment_id;

-- =====================================
-- 7. Pending Payments
-- =====================================
SELECT * FROM Billing WHERE payment_status = 'Pending';

-- =====================================
-- 8. Cancelled Appointments
-- =====================================
SELECT * FROM Appointment WHERE status = 'Cancelled';

-- =====================================
-- 9. Appointments of a Specific Patient
-- =====================================
SELECT * 
FROM Appointment 
WHERE patient_id = 1;