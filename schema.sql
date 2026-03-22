CREATE DATABASE healthcare;
USE healthcare;

-- PATIENT
CREATE TABLE Patient (
    patient_id INT PRIMARY KEY,
    name VARCHAR(100),
    dob DATE,
    gender VARCHAR(10),
    phone VARCHAR(15),
    address TEXT
);

-- DOCTOR
CREATE TABLE Doctor (
    doctor_id INT PRIMARY KEY,
    name VARCHAR(100),
    specialization VARCHAR(100),
    phone VARCHAR(15)
);

-- APPOINTMENT
CREATE TABLE Appointment (
    appointment_id INT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    appointment_date DATETIME,
    status VARCHAR(20),

    FOREIGN KEY (patient_id) REFERENCES Patient(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctor(doctor_id)
);

-- TREATMENT
CREATE TABLE Treatment (
    treatment_id INT PRIMARY KEY,
    appointment_id INT,
    diagnosis TEXT,
    prescription TEXT,

    FOREIGN KEY (appointment_id) REFERENCES Appointment(appointment_id)
);

-- MEDICAL HISTORY
CREATE TABLE Medical_History (
    history_id INT PRIMARY KEY,
    patient_id INT,
    disease VARCHAR(100),
    allergies TEXT,
    past_treatment TEXT,

    FOREIGN KEY (patient_id) REFERENCES Patient(patient_id)
);

-- BILLING
CREATE TABLE Billing (
    bill_id INT PRIMARY KEY,
    appointment_id INT,
    amount DECIMAL(10,2),
    payment_status VARCHAR(20),
    payment_method VARCHAR(50),

    FOREIGN KEY (appointment_id) REFERENCES Appointment(appointment_id)
);