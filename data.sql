USE healthcare;

-- =========================
-- PATIENT DATA
-- =========================
INSERT INTO Patient VALUES
(1, 'Arun', '2004-05-10', 'Male', '9876543210', 'Chennai'),
(2, 'Priya', '2003-08-15', 'Female', '9123456781', 'Bangalore'),
(3, 'Rahul', '2002-11-20', 'Male', '9012345678', 'Hyderabad'),
(4, 'Sneha', '2005-01-05', 'Female', '9988776655', 'Chennai'),
(5, 'Karthik', '2001-07-12', 'Male', '8899001122', 'Coimbatore'),
(6, 'Anjali', '2000-03-18', 'Female', '7766554433', 'Madurai'),
(7, 'Vijay', '1999-09-25', 'Male', '6655443322', 'Salem'),
(8, 'Divya', '2004-12-30', 'Female', '5544332211', 'Trichy'),
(9, 'Suresh', '2002-06-14', 'Male', '4433221100', 'Erode'),
(10, 'Meena', '2003-04-22', 'Female', '3322110099', 'Chennai');

-- =========================
-- DOCTOR DATA
-- =========================
INSERT INTO Doctor VALUES
(101, 'Dr. Ravi', 'Cardiology', '9123456780'),
(102, 'Dr. Meena', 'Dermatology', '9871234567'),
(103, 'Dr. Kumar', 'Orthopedics', '9011223344'),
(104, 'Dr. Anitha', 'Pediatrics', '9122334455'),
(105, 'Dr. Rajesh', 'Neurology', '9233445566'),
(106, 'Dr. Lakshmi', 'Gynecology', '9344556677'),
(107, 'Dr. Prakash', 'ENT', '9455667788'),
(108, 'Dr. Sunil', 'General Medicine', '9566778899'),
(109, 'Dr. Kavitha', 'Ophthalmology', '9677889900'),
(110, 'Dr. Ramesh', 'Cardiology', '9788990011');

-- =========================
-- APPOINTMENT DATA
-- =========================
INSERT INTO Appointment VALUES
(1001, 1, 101, '2026-03-21 10:00:00', 'Scheduled'),
(1002, 2, 102, '2026-03-21 11:00:00', 'Completed'),
(1003, 3, 103, '2026-03-21 12:00:00', 'Scheduled'),
(1004, 4, 104, '2026-03-22 09:30:00', 'Completed'),
(1005, 5, 105, '2026-03-22 10:30:00', 'Cancelled'),
(1006, 6, 106, '2026-03-22 11:30:00', 'Completed'),
(1007, 7, 107, '2026-03-23 10:00:00', 'Scheduled'),
(1008, 8, 108, '2026-03-23 11:00:00', 'Completed'),
(1009, 9, 109, '2026-03-23 12:00:00', 'Scheduled'),
(1010, 10, 110, '2026-03-24 09:00:00', 'Completed');

-- =========================
-- TREATMENT DATA
-- =========================
INSERT INTO Treatment VALUES
(5001, 1001, 'Chest Pain', 'Tablet A - 5 days'),
(5002, 1002, 'Skin Allergy', 'Ointment B'),
(5003, 1003, 'Fracture', 'Cast for 4 weeks'),
(5004, 1004, 'Fever', 'Paracetamol'),
(5005, 1005, 'Migraine', 'Painkillers'),
(5006, 1006, 'Pregnancy Checkup', 'Routine vitamins'),
(5007, 1007, 'Ear Infection', 'Antibiotics'),
(5008, 1008, 'Cold & Cough', 'Syrup'),
(5009, 1009, 'Eye Irritation', 'Eye drops'),
(5010, 1010, 'Heart Checkup', 'ECG + Medication');

-- =========================
-- MEDICAL HISTORY DATA
-- =========================
INSERT INTO Medical_History VALUES
(7001, 1, 'Asthma', 'Dust allergy', 'Inhaler treatment'),
(7002, 2, 'Allergy', 'Pollen', 'Antihistamines'),
(7003, 3, 'Fracture', 'None', 'Surgery'),
(7004, 4, 'Flu', 'None', 'Medication'),
(7005, 5, 'Migraine', 'Light sensitivity', 'Pain management'),
(7006, 6, 'Pregnancy', 'None', 'Regular checkups'),
(7007, 7, 'Sinus', 'Dust', 'Medication'),
(7008, 8, 'Cold', 'None', 'Rest'),
(7009, 9, 'Eye issue', 'Dryness', 'Eye drops'),
(7010, 10, 'Heart issue', 'High BP', 'Medication');

-- =========================
-- BILLING DATA
-- =========================
INSERT INTO Billing VALUES
(9001, 1001, 1500.00, 'Paid', 'UPI'),
(9002, 1002, 800.00, 'Paid', 'Cash'),
(9003, 1003, 2000.00, 'Pending', 'Card'),
(9004, 1004, 500.00, 'Paid', 'UPI'),
(9005, 1005, 700.00, 'Cancelled', 'N/A'),
(9006, 1006, 1500.00, 'Paid', 'UPI'),
(9007, 1007, 600.00, 'Pending', 'Cash'),
(9008, 1008, 400.00, 'Paid', 'Card'),
(9009, 1009, 900.00, 'Paid', 'UPI'),
(9010, 1010, 2500.00, 'Paid', 'Card');