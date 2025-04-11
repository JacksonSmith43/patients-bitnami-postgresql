SELECT * FROM patients;
SELECT * FROM doctors;
SELECT * FROM illnesses;
SELECT * FROM hospitals;
SELECT * FROM treatments;

UPDATE treatments
SET hospital_id = 6 
WHERE hospital_id = 7;

DELETE FROM hospitals
WHERE hospital_id = 7;

INSERT INTO  treatments(patient_id, illness_id, doctor_id, hospital_id, date)
VALUES (42, 7, 7, 6, '2023-06-22');