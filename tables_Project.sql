use wellnessway;
CREATE TABLE `doctor` (
  `doctorid` varchar(10) ,
  `SSN` char(9) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `phonenum` char(10) NOT NULL,
  PRIMARY KEY (`doctorid`)
) ;

CREATE TABLE `doctor_specilazatios` (
  `UserID` varchar(10) ,
  `Specialization` varchar(30) ,
  PRIMARY KEY (`UserID`,`Specialization`),
  CONSTRAINT `con_UserID_fk` FOREIGN KEY (`UserID`) REFERENCES `doctor` (`doctorid`) ON DELETE CASCADE
);

CREATE TABLE `Patient` (
  `PatientID` varchar(10) ,
  `SSN` char(9) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  DateOfBirth Date,
  `city` varchar(20) ,
  `Street` varchar(50) ,
  `BuildingNo` varchar(10) ,
  PRIMARY KEY (PatientID) 
  );
  use wellnessway;
  CREATE TABLE Medical_Insurance (
  insuranceNum varchar(15) ,
  insuranceType varchar(20) NOT NULL,
   CovarageLimit varchar(20) NOT NULL,
   StartDate Date NOT NULL,
   EndDate Date NOT NULL,
   PatientID varchar(10) ,
   PayNo varchar(10),
   PRIMARY KEY (InsuranceNum) ,
   CONSTRAINT con_insurance_patid_fk FOREIGN KEY (PatientID) REFERENCES Patient (PatientID) ON DELETE CASCADE
  );
 use wellnessway;
Create Table HomeHealthCareServices (
ServiceID VARCHAR (10) NOT NULL UNIQUE Primary Key ,
Cost DECIMAL (6,2) NOT NULL,
ReqNature VARCHAR (20) NOT NULL );

 use wellnessway;
CREATE TABLE Can_Request (
    ServiceID VARCHAR(10) NOT NULL,
    PatientID VARCHAR(10) NOT NULL,
    ReqTime TIME NOT NULL,
    DateOfRequest DATE,
    DateOfService DATE,
    PRIMARY KEY (ServiceID, PatientID),
    Constraint FK_Service_ID FOREIGN KEY (ServiceID) REFERENCES HomeHealthCareServices (ServiceID) ON DELETE CASCADE,
    Constraint FK_Patient_ID FOREIGN KEY (PatientID) REFERENCES Patient (PatientID) ON DELETE CASCADE
);
use wellnessway;
CREATE TABLE Consultation ( 
Consult_ID VARCHAR(10) NOT NULL UNIQUE primary key,
 DocID VARCHAR(10) NOT NULL,
 Patient_ID VARCHAR(10) NOT NULL,
 constraint con_docid_FK FOREIGN KEY (DocID) references doctor (doctorid) ON DELETE CASCADE,
 constraint con_patientid_FK FOREIGN KEY (Patient_ID) references Patient (PatientID) ON DELETE CASCADE
 );
 
 use wellnessway;
 CREATE TABLE Payment (
PayNo VARCHAR (10) NOT NULL UNIQUE PRIMARY KEY ,
PayAmount DECIMAL (6,2) NOT NULL ,
PayDate Date NOT NULL );
 
 
  use wellnessway;
 CREATE TABLE Appointment (
    App_ID VARCHAR(10) NOT NULL UNIQUE PRIMARY KEY,
    AppTime TIME NOT NULL,
    Cost DECIMAL(6,2) NOT NULL,
    AppDay INT NOT NULL, CHECK (AppDay BETWEEN 1 AND 31),
    AppMonth INT NOT NULL, CHECK (AppMonth BETWEEN 1 AND 12),
    AppYear INT NOT NULL, CHECK (AppYear > 2000),
    AppStatus VARCHAR(15) NOT NULL,
    TotalAmountOfTests INT NOT NULL,
    Consult_ID VARCHAR(10) NOT NULL,
    PayNo VARCHAR(10) NOT NULL,
    Constraint FK_Consult_ID FOREIGN KEY (Consult_ID) REFERENCES Consultation (Consult_ID) ON DELETE CASCADE,
    Constraint FK_PayNo FOREIGN KEY (PayNo) REFERENCES Payment (PayNo) ON DELETE CASCADE
);

use wellnessway;
create table payedByInsurance(
payNo varchar(10) primary key,
MedicalApproval varchar(20),
insuranceNum varchar(15) not null,
 Constraint con_payNo_FK FOREIGN KEY (payNo) REFERENCES Payment (PayNo) ON DELETE CASCADE,
 Constraint con_insuranceNum_FK FOREIGN KEY (insuranceNum) REFERENCES Medical_Insurance (insuranceNum) ON DELETE CASCADE
 
);

use wellnessway;
create table pharmacy(
pharmacyID varchar(10) primary key Unique,
phone varchar(15) not null,
phname varchar(20) not null,
streetName varchar(20) not null, 
city varchar(20) not null,
buildingNo INT 
);


use wellnessway;
create table medical_prescription (
perscID varchar(10) primary key, 
numOfDays varchar(15) not null,
dailyPortion varchar(20) not null,
presday INT not null,
presmonth INT not null,
presyear INT not null, 
App_ID varchar(10) not null unique,
Constraint con_appID_FK FOREIGN KEY (App_ID) REFERENCES Appointment (App_ID) ON DELETE CASCADE

);


use wellnessway;
create table delivery (
pharID varchar(10) not null unique,
perscID varchar(10) not null unique,
patientID varchar(10) not null unique,
address varchar(30) not null,
deliverydate date not null, 
constraint con_pharID_perscID_pk primary key ( pharID, perscID, patientID),

Constraint con_phar_ID_FK FOREIGN KEY (pharID) REFERENCES pharmacy (pharmacyID) ON DELETE CASCADE,
Constraint con_persc_ID_FK FOREIGN KEY (perscID) REFERENCES medical_prescription (perscID) ON DELETE CASCADE,
Constraint con_patient_ID_FK FOREIGN KEY (patientID) REFERENCES Patient (PatientID) ON DELETE CASCADE
);

use wellnessway;
create table medicine(
medID varchar(10) primary key,
medName varchar(20) not null,
expDate date not null 
);

use wellnessway;
create table contain(
perscID varchar(10) not null,
medID varchar(10) not null,
dosage varchar(10) not null,
constraint con_persID_medID_pk primary key (perscID, medID),

Constraint perscID_FK FOREIGN KEY (perscID) REFERENCES medical_prescription (perscID) ON DELETE CASCADE,
Constraint con_medID_FK FOREIGN KEY (medID) REFERENCES medicine (medID) ON DELETE CASCADE
);


use wellnessway;
CREATE TABLE MedicalTest (
    MedTestID VARCHAR(10) PRIMARY KEY,
    TestName VARCHAR(30) NOT NULL,
    Cost DECIMAL(10, 2) NOT NULL,
    testDay INT not null,
    testMonth INT not null ,
    testYear INT not null,
    Building VARCHAR(10),
    FloorNo INT not null,
    RoomNo INT not null,
    Fasting BOOLEAN NOT NULL,
    App_ID VARCHAR(10) NOT NULL,

    CONSTRAINT FK_AppID FOREIGN KEY (App_ID) REFERENCES Appointment (App_ID)
    );

use wellnessway;
  CREATE TABLE TestDetails (
    MedTestID VARCHAR(10) NOT NULL,
    TestDetailsID VARCHAR(10) NOT NULL UNIQUE,
    testValue DECIMAL(10, 2),
    ItemName VARCHAR(20) NOT NULL,
    Max_value DECIMAL(10, 2),
    Min_value DECIMAL(10, 2),
    CONSTRAINT PK_TestDetails PRIMARY KEY (MedTestID, TestDetailsID),
    CONSTRAINT FK_MedTestID FOREIGN KEY (MedTestID) REFERENCES MedicalTest(MedTestID)
);
 