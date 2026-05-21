select * from Appointment


INSERT INTO Appointment
(Date, Time, Status, Appointment_type, Reason, Patient_id, Doctor_id)
VALUES
('2026-05-21', '09:00:00', 'Scheduled', 'Consultation',
 'Fever and headache', 3, 5);

 INSERT INTO Appointment
(Date, Time, Status, Appointment_type, Reason, Patient_id, Doctor_id)
VALUES
('2026-05-21', '11:30:00', 'Completed', 'Follow-up',
 'Blood pressure review', 2, 6);

 
INSERT INTO Appointment
(Date, Time, Status, Appointment_type, Reason, Patient_id, Doctor_id)
VALUES
('2026-05-22', '14:00:00', 'Cancelled', 'Consultation',
 'Routine health checkup', 4, 3);

 INSERT INTO Appointment
(Date, Time, Status, Appointment_type, Reason, Patient_id, Doctor_id)
VALUES
('2026-05-22', '15:15:00', 'Completed', 'Emergency',
 'Severe chest pain', 5, 5);

 INSERT INTO Appointment
(Date, Time, Status, Appointment_type, Reason, Patient_id, Doctor_id)
VALUES
('2026-05-23', '10:45:00', 'Scheduled', 'Consultation',
 'Diabetes consultation',2, 5);

 INSERT INTO Appointment
(Date, Time, Status, Appointment_type, Reason, Patient_id, Doctor_id)
VALUES
('2026-05-23', '13:00:00', 'Completed', 'Follow-up',
 'Post-surgery review', 2, 5);

 INSERT INTO Appointment
(Date, Time, Status, Appointment_type, Reason, Patient_id, Doctor_id)
VALUES
('2026-05-24', '08:30:00', 'Scheduled', 'Consultation',
 'Skin allergy treatment', 2, 6);

 select * from Doctor
 select * from Appointment
 select * from Patient
 select * from Department

 UPDATE Patient
SET DOB = '1998-07-15'
WHERE Patient_id = 5;

UPDATE Doctor
SET Specialization = 'Neurologist'
WHERE Doctor_id = 4;

UPDATE Appointment
SET Date = '2026-06-01'
WHERE Appointment_id = 8;

UPDATE Patient
SET F_name = 'Walaa'
WHERE Patient_id = 11;

UPDATE Appointment
SET Doctor_id = 6
WHERE Appointment_id = 4;

DELETE FROM Patient
WHERE Patient_id = 2;

DELETE FROM Appointment
WHERE Patient_id = 2;

DELETE FROM Patient
WHERE Patient_id = 2;

DELETE FROM Appointment
WHERE Doctor_id = 5;

UPDATE Department
SET Head_doctor_id = NULL
WHERE Head_doctor_id = 3;

DELETE FROM Doctor
WHERE Doctor_id = 3;

DELETE FROM Appointment
WHERE Status IN ('Completed', 'Cancelled');

UPDATE Patient 
SET F_name = ''
WHERE Patient_id = 1;

DELETE FROM Appointment
WHERE Patient_id = 1;


DELETE FROM Patient
WHERE Phone_no IS NULL
   OR Email IS NULL
   OR F_name = ''
   OR L_name = '';

DELETE FROM Appointment
WHERE Doctor_id = 6;

DROP TABLE Billing;

