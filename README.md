🏥 Clinic Management System - ER Diagram

## Project Overview
This project represents the database design (ER Diagram) for a modern clinic system.

The system helps manage:
- Patients and Doctors
- Appointments and Consultations
- Diagnostic Tests and Reports
- Payments

## Objective
To design a clean and structured database model that supports the workflow of a clinic:
Appointment → Consultation → Tests → Reports → Payment

---

## Entities Included
- **Patients**
- **Doctors**
- **Appointments**
- **Consultations**
- **Tests**
- **Reports**
- **Payments**

## Relationships
- One patient can book multiple appointments
- One doctor can attend multiple patients
- One appointment may lead to a consultation
- One consultation can have multiple diagnostic tests
- Each test generates a report
- Payments are linked to consultations and patients

## Key Features
- Clear separation between appointment and consultation
- Supports multiple visits for a patient
- Allows multiple tests per consultation
- Tracks reports generated after tests
- Maintains payment records
---

## 👨‍💻 Author
Abhishek Chaurasiya
