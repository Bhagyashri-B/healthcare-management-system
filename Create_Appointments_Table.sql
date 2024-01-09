-- CREATE TABLE APPOINTMENTS

CREATE TABLE Appointments

(
AppointmentID Integer Primary Key,
PatientID Integer,
DoctorID Integer,
AppointmentDate DATETIME,
Status Varchar(20),
Foreign Key (PatientID) REFERENCES Patients(PatientID),
Foreign Key (DoctorID) REFERENCES Doctors(DoctorID));