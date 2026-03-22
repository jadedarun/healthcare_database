# 🏥 Healthcare Management Database System

Description : 

This project is an industry-oriented Healthcare Management Database System designed to efficiently manage hospital operations such as patient records, 
doctor details, appointments, treatments, medical history, and billing.
The system is built using SQL and follows proper relational database design principles including normalization, foreign key constraints, and structured data 
management to ensure consistency, integrity, and scalability.

Features :

* Patient and Doctor data management
* Appointment scheduling system
* Treatment and diagnosis tracking
* Medical history storage
* Billing and payment handling
* Relational integrity using foreign keys
* Complex SQL queries for reporting and analytics


Database Design :

Entities:

* Patient
* Doctor
* Appointment
* Treatment
* Medical_History
* Billing

Relationships:

* A Patient can have multiple Appointments (1:M)
* A Doctor can handle multiple Appointments (1:M)
* Each Appointment has one Treatment (1:1)
* Each Appointment has one Billing record (1:1)
* A Patient can have multiple Medical History records (1:M)


Technologies Used :

* MySQL
* SQL (DDL, DML, Queries)
* Draw.io (ER Diagram)
* Git & GitHub


Project Structure : 

* `schema.sql` → Table creation scripts
* `data.sql` → Sample data insertion
* `queries.sql` → SQL queries for analysis


Learning Outcomes :

* Understanding of relational database design
* Hands-on experience with SQL queries
* Knowledge of normalization and data integrity
* Real-world healthcare data modeling
