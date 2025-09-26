use wellnessway; 

-- Inserting records into doctor table
 INSERT INTO doctor (doctorid, SSN, fname, lname, phonenum) VALUES 
 ('D000000001', '123456789', 'John', 'Doe', '0123456789'),
 ('D000000002', '234567890', 'Jane', 'Smith', '0234567890'),
 ('D000000003', '345678901', 'Mike', 'Johnson', '0345678901'),
 ('D000000004', '456789012', 'Emily', 'Davis', '0456789012'), 
 ('D000000005', '567890123', 'Sarah', 'Brown', '0567890123'),
 ('D000000006', '678901234', 'David', 'Wilson', '0678901234'),
 ('D000000007', '789012345', 'Laura', 'Moore', '0789012345'),
 ('D000000008', '890123456', 'Robert', 'Taylor', '0890123456'),
 ('D000000009', '901234567', 'Linda', 'Anderson', '0901234567'),
 ('D000000010', '012345678', 'James', 'Thomas', '0012345678');
 

  INSERT INTO doctor (doctorid, SSN, fname, lname, phonenum) VALUES
 ('D000000011', '101237654', 'James', 'Raben', '0501112222'),
 ('D000000012', '987654321', 'Sara', 'Wilson', '0552223312'),
 ('D000000013', '113355779', 'Zainah', 'Zony', '0556666621'),
 ('D000000014', '224466880', 'Lubaba', 'Maren', '0538777765'), 
 ('D000000015', '123987554', 'Nadia', 'Sie', '0567890123'), 
 ('D000000016', '560012225', 'Emily', 'Bone', '0999332199');
 

 
 INSERT INTO doctor_specilazatios (UserID, Specialization) VALUES 
 ('D000000001', 'Cardiology'),
 ('D000000002', 'Neurology'), 
 ('D000000003', 'Dermatology'), 
 ('D000000004', 'Orthopedics'),
 ('D000000005', 'Pediatrics'),
 ('D000000006', 'Gastroenterology'), 
 ('D000000007', 'Urology'), 
 ('D000000008', 'Oncology'),
 ('D000000009', 'Radiology'), 
 ('D000000010', 'Endocrinology'),
 ('D000000011', 'Orthopedics'),
 ('D000000012', 'Pediatrics'),
 ('D000000013', 'Gastroenterology'), 
 ('D000000014', 'Urology'), 
 ('D000000015', 'Radiology'),
 ('D000000016', 'Radiology');
 
 
-- Inserting records into Patient table
 INSERT INTO Patient (PatientID, SSN, fname, lname, DateOfBirth, city, Street, BuildingNo) VALUES
 ('P000000001', '111111111', 'Alice', 'Green', '1990-01-01', 'Riyadh', 'King Fahd Road', '100'),
 ('P000000002', '222222222', 'Bob', 'White', '1985-02-02', 'Riyadh', 'Olaya Street', '200'), 
 ('P000000003', '333333333', 'Charlie', 'Blan', '1992-03-03', 'Riyadh', 'Tahlia Street', '300'), 
 ('P000000004', '444444444', 'Diana', 'Brown', '1995-04-04', 'Riyadh', 'Salahuddin Street', '400'),
 ('P000000005', '555555555', 'Eve', 'Adams', '1980-05-05', 'Riyadh', 'King Khalid Street', '500'),
 ('P000000006', '666666666', 'Frank', 'Clark', '1975-06-06', 'Riyadh', 'Othman Bin Affan', '600'), 
 ('P000000007', '777777777', 'Grace', 'Lewis', '1988-07-07', 'Riyadh', 'Imam Saud', '700'), 
 ('P000000008', '888888888', 'Hank', 'Walker', '1983-08-08', 'Riyadh', 'Sultan Ibn Abdulaziz', '800'), 
 ('P000000009', '999999999', 'Ivy', 'Scott', '1991-09-09', 'Riyadh', 'Prince Turki', '900'), 
 ('P000000010', '000000000', 'Jack', 'Young', '1993-10-10', 'Riyadh', 'Sheikh Jaber', '1000'),
 ('P000000011', '101010101', 'Kevin', 'Foster', '1984-11-11', 'Riyadh', 'Al Malaz Street', '1100'),
('P000000012', '202020202', 'Sophia', 'Mitchell', '1979-12-12', 'Riyadh', 'Al Olaya Street', '1200'),
('P000000013', '303030303', 'Liam', 'Harris', '1988-05-13', 'Riyadh', 'Al Batha Street', '1300'),
('P000000014', '404040404', 'Olivia', 'Martinez', '2003-07-14', 'Riyadh', 'Al Naseem Street', '1400'),
('P000000015', '505050505', 'Noah', 'Robinson', '2005-08-15', 'Riyadh', 'Al Khobar Street', '1500'),
('P000000016', '606060606', 'Ava', 'Rodriguez', '1982-09-16', 'Riyadh', 'Olaya Street', '1600');
 
-- Adding more records into Patient table
INSERT INTO Patient (PatientID, SSN, fname, lname, DateOfBirth, city, Street, BuildingNo) VALUES
('P000000017', '707070707', 'Mason', 'Lopez', '2000-11-17', 'Riyadh', 'King Abdulaziz Street', '1700'),
('P000000018', '808080808', 'Amelia', 'Gonzalez', '1981-12-18', 'Riyadh', 'Al Rabia Street', '1800'),
('P000000019', '909090909', 'Sara', 'Perez', '1990-03-19', 'Riyadh', 'Al Hamra Street', '1900'),
('P000000020', '110101111', 'Charlotte', 'Lee', '1989-04-20', 'Riyadh', 'Al Rawda Street', '2000'),
('P000000021', '220202222', 'Ethan', 'Walker', '1988-05-21', 'Riyadh', 'Al Manar Street', '2100'),
('P000000022', '330303033', 'Isabella', 'Hall', '1995-06-22', 'Riyadh', 'Al Thumamah Street', '2200'),
('P000000023', '440404044', 'Aiden', 'Young', '1991-07-23', 'Riyadh', 'Al Hizam Street', '2300'),
('P000000024', '550505055', 'Mia', 'King', '1994-08-24', 'Riyadh', 'Al Yasmin Street', '2400'),
('P000000025', '660606066', 'Jackson', 'Wright', '1986-09-25', 'Riyadh', 'Al Gharbi Street', '2500');

 
 

 
 
 select *
 from Patient;
 
 
  select *
 from doctor_specilazatios ;