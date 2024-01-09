--1. List of all patients

SELECT * FROM Patients;

--2. Find all doctors in a specific specialty

SELECT * FROM Doctors WHERE Speciality = 'Cardiology';

-- This query gives an error"The data types text and varchar are incompatible in the equal to operator.". To rectify this let's alter the datatype of respective column and run the above query one more time.

ALTER TABLE Doctors
ALTER COLUMN Speciality varchar(20);

--3.Retrieve all appointments for a specific patient

SELECT * FROM Appointments WHERE PatientID = 1;

--4.Display upcoming appointments

SELECT * FROM Appointments WHERE AppointmentDate > GETDATE();

--5. Count the number of appointments by doctor:

SELECT DoctorID,count(*) AS AppointmentCount
FROM Appointments
GROUP BY DoctorID;

--6.Update appointment status to 'Completed':

UPDATE Appointments
SET Status = 'Completed'
WHERE PatientID = 1;

--Chech the status now 

SELECT * FROM Appointments;

--7. Find the average age of patients:

SELECT AVG(Age) as AverageAge
FROM Patients;

--8. Identify doctors with the most appointments:

SELECT DoctorID, COUNT(*) AS AppointmentCount
FROM Appointments
GROUP BY DoctorID
ORDER BY AppointmentCount DESC;