DROP TABLE IF EXISTS CourseDetails;
DROP TABLE IF EXISTS CoursesTaken;
DROP TABLE IF EXISTS Professors;

-------------------------------------------------
-- TABLE 1
-------------------------------------------------

CREATE TABLE CourseDetails (
    course_id VARCHAR(20),
    course_name VARCHAR(100),
    course_ic VARCHAR(100),
    instructor VARCHAR(200),
    timing VARCHAR(50),
    place VARCHAR(50),
    components VARCHAR(10),
    course_credits INT,
    midsem_date VARCHAR(50),
    compre_date VARCHAR(50)
);

-------------------------------------------------
-- TABLE 2
-------------------------------------------------

CREATE TABLE CoursesTaken (
    student_id INT,
    course_id VARCHAR(20),
    grade VARCHAR(2),
    credits INT,
    cgpa FLOAT
);

-------------------------------------------------
-- TABLE 3
-------------------------------------------------

CREATE TABLE Professors (
    prof_name VARCHAR(100),
    department VARCHAR(50),
    chamber VARCHAR(50),
    prof_mail VARCHAR(100)
);

-------------------------------------------------
-- INSERT COURSES
-------------------------------------------------

INSERT INTO CourseDetails VALUES

-- CS
('CS F211','Data Structures','Aniket Basu Roy','Limaye','MWF4','LT1','L',4,'10/03/26','06/05/26'),
('CS F212','Database Systems','Shubhangi','Baskar','TTH8','LT1','L',4,'13/03/26','13/05/26'),
('CS F303','Networks','Sougata','Das','TTH3','LT1','L',4,'13/03/26','13/05/26'),
('CS F372','Operating Systems','Biju','Biju','MWF9','DLT5','L',3,'07/03/26','16/05/26'),
('CS F364','Algo','Bharat','Bharat','MWF3','LT1','L',3,'14/03/26','11/05/26'),

-- BIO
('BIO F101','Intro Bio','Indrani','Aduri','MW2','LT4','L',3,'13/03/26','14/05/26'),
('BIO F215','Biophysics','Sumit','Aduri','TTH3','C302','L',3,'11/03/26','08/05/26'),
('BIO F241','Ecology','Kundan','Malabika','MWF5','C404','L',3,'12/03/26','02/05/26'),
('BIO F243','Genetics','Rajesh','Malabika','TTH5','C404','L',3,'10/03/26','07/05/26'),
('BIO F342','Immunology','Nayak','Meenal','MWF2','C302','L',3,'15/03/26','15/05/26'),

-- CHEM
('CHEM F101','Chemistry','Bhavana','Raghu','MW3','LT3','L',3,'13/03/26','14/05/26'),
('CHEM F241','Inorganic','Saurav','Sinha','TTH4','A603','L',3,'14/03/26','12/05/26'),
('CHEM F243','Organic','Roy','Rashmi','MWF9','A603','L',3,'07/03/26','16/05/26'),
('CHEM F244','Physical','Anjan','Raghu','MWF5','C306','L',3,'12/03/26','02/05/26'),
('CHEM F327','Electro','Kiran','Bhavana','TTH5','C306','L',3,'10/03/26','07/05/26'),

-- CHE
('CHE F241','Heat','Sutapa','Upasana','MWF4','A503','L',3,'13/03/26','13/05/26'),
('CHE F242','Numerical','Paramita','Paramita','MWF5','A503','L',3,'12/03/26','02/05/26'),
('CHE F243','Material','Richa','Richa','TTH4','A503','L',3,'14/03/26','11/05/26'),
('CHE F244','Separation','Saroj','Manas','TTH5','A503','L',3,'10/03/26','06/05/26'),
('CHE F343','Process','Srinivas','Puneet','MWF2','A605','L',3,'10/03/26','06/05/26'),

-- PHY
('PHY F111','Mechanics','Sharma','Singh','MWF2','LT2','L',3,'11/03/26','09/05/26'),
('PHY F112','EM','Kumar','Gupta','TTH3','LT2','L',3,'12/03/26','10/05/26'),
('PHY F241','Modern','Banerjee','Sinha','MWF5','A501','L',3,'14/03/26','12/05/26'),
('PHY F342','Quantum','Roy','Roy','TTH6','A502','L',3,'15/03/26','14/05/26'),
('PHY F110','Physics Lab','TBA','TBA','TBA','LAB','P',1,'TBA','TBA'),

-- ECON
('ECON F211','Economics','Ghosh','Ghosh','MWF1','C301','L',3,'11/03/26','09/05/26'),
('ECON F212','Macro','Banerjee','Banerjee','TTH2','C301','L',3,'12/03/26','10/05/26'),
('ECON F241','Econometrics','Sen','Sen','MWF6','C302','L',3,'14/03/26','12/05/26'),
('ECON F242','Game','Mitra','Mitra','TTH5','C302','L',3,'15/03/26','13/05/26'),
('ECON F243','Finance','Roy','Roy','MWF7','C303','L',3,'16/03/26','14/05/26'),

-- ECE
('ECE F211','Signals','Kulkarni','Kulkarni','MWF3','A101','L',3,'11/03/26','09/05/26'),
('ECE F212','Digital','Patil','Patil','TTH4','A101','L',3,'12/03/26','10/05/26'),
('ECE F241','Comm','Rao','Rao','MWF5','A102','L',3,'14/03/26','12/05/26'),
('ECE F242','Control','Nair','Nair','TTH6','A102','L',3,'15/03/26','13/05/26'),
('ECE F243','VLSI','Iyer','Iyer','MWF8','A103','L',3,'16/03/26','14/05/26'),

-- EEE
('EEE F211','Machines','Sharma','Sharma','MWF2','B101','L',3,'11/03/26','09/05/26'),
('EEE F212','Power','Gupta','Gupta','TTH3','B101','L',3,'12/03/26','10/05/26'),
('EEE F241','Control','Verma','Verma','MWF6','B102','L',3,'14/03/26','12/05/26'),
('EEE F242','Electronics','Iyer','Iyer','TTH5','B102','L',3,'15/03/26','13/05/26'),
('EEE F243','Networks','Singh','Singh','MWF7','B103','L',3,'16/03/26','14/05/26'),

-- MAC
('MAC F211','Discrete','Iyer','Iyer','MWF1','M101','L',3,'11/03/26','09/05/26'),
('MAC F212','Probability','Kulkarni','Kulkarni','TTH2','M101','L',3,'12/03/26','10/05/26'),
('MAC F241','Linear','Mehta','Mehta','MWF4','M102','L',3,'14/03/26','12/05/26'),
('MAC F242','Optimization','Nair','Nair','TTH5','M102','L',3,'15/03/26','13/05/26'),
('MAC F243','Number','Shah','Shah','MWF7','M103','L',3,'16/03/26','14/05/26'),

-- MATH
('MATH F111','Calculus','Sharma','Sharma','MWF2','MA101','L',3,'11/03/26','09/05/26'),
('MATH F112','Algebra','Gupta','Gupta','TTH3','MA101','L',3,'12/03/26','10/05/26'),
('MATH F241','DiffEq','Rao','Rao','MWF5','MA102','L',3,'14/03/26','12/05/26'),
('MATH F242','Analysis','Bose','Bose','TTH6','MA102','L',3,'15/03/26','13/05/26'),
('MATH F243','Complex','Sen','Sen','MWF8','MA103','L',3,'16/03/26','14/05/26'),

-- ME
('ME F211','Mechanics','Reddy','Reddy','MWF1','ME101','L',3,'11/03/26','09/05/26'),
('ME F212','Thermo','Pillai','Pillai','TTH2','ME101','L',3,'12/03/26','10/05/26'),
('ME F241','Fluid','Nair','Nair','MWF4','ME102','L',3,'14/03/26','12/05/26'),
('ME F242','Design','Kumar','Kumar','TTH5','ME102','L',3,'15/03/26','13/05/26'),
('ME F243','Manufacturing','Singh','Singh','MWF7','ME103','L',3,'16/03/26','14/05/26');


INSERT INTO Professors VALUES
('Aniket Basu Roy','CS','LT1','aniket@bits.ac.in'),
('Shubhangi','CS','LT1','shubhangi@bits.ac.in'),
('Sumit Biswas','BIO','C302','sumit@bits.ac.in'),
('Bhavana','CHEM','A603','bhavana@bits.ac.in'),
('Sutapa','CHE','A503','sutapa@bits.ac.in'),
('Sharma','PHY','A501','sharma@bits.ac.in'),
('Ghosh','ECON','C301','ghosh@bits.ac.in'),
('Kulkarni','ECE','A101','kulkarni@bits.ac.in'),
('Gupta','EEE','B101','gupta@bits.ac.in'),
('Iyer','MAC','M101','iyer@bits.ac.in'),
('Bose','MATH','MA102','bose@bits.ac.in'),
('Reddy','ME','ME101','reddy@bits.ac.in');


INSERT INTO CourseDetails VALUES

-- GS
('GS F211','Technical Writing','Thomas','Thomas','MWF1','D201','L',2,'11/03/26','09/05/26'),
('GS F212','Professional Ethics','Das','Das','TTH2','D201','L',2,'12/03/26','10/05/26'),
('GS F213','Communication Skills','Roy','Roy','MWF4','D202','L',2,'14/03/26','12/05/26'),
('GS F214','Critical Thinking','Sen','Sen','TTH6','D202','L',2,'15/03/26','13/05/26'),
('GS F215','Technical Report','Nair','Nair','MWF7','D203','L',2,'16/03/26','14/05/26'),

-- HSS
('HSS F211','Psychology','Bose','Bose','MWF3','H101','L',3,'11/03/26','09/05/26'),
('HSS F212','Sociology','Dutta','Dutta','TTH4','H101','L',3,'12/03/26','10/05/26'),
('HSS F241','Philosophy','Roy','Roy','MWF5','H102','L',3,'14/03/26','12/05/26'),
('HSS F242','Political Science','Sen','Sen','TTH6','H102','L',3,'15/03/26','13/05/26'),
('HSS F243','History','Ghosh','Ghosh','MWF8','H103','L',3,'16/03/26','14/05/26'),

-- INSTR
('INSTR F211','Measurements','Pillai','Pillai','MWF2','I101','L',3,'11/03/26','09/05/26'),
('INSTR F212','Control Systems','Menon','Menon','TTH3','I101','L',3,'12/03/26','10/05/26'),
('INSTR F241','Sensors','Kumar','Kumar','MWF6','I102','L',3,'14/03/26','12/05/26'),
('INSTR F242','Process Control','Rao','Rao','TTH5','I102','L',3,'15/03/26','13/05/26'),
('INSTR F243','Instrumentation Lab','Das','Das','MWF7','I103','P',2,'16/03/26','14/05/26');

INSERT INTO Professors VALUES
('Thomas','GS','D201','thomas@bits.ac.in'),
('Das','GS','D201','das@bits.ac.in'),
('Roy','GS','D202','roy@bits.ac.in'),
('Sen','GS','D202','sen@bits.ac.in'),
('Nair','GS','D203','nair@bits.ac.in'),

('Bose','HSS','H101','bose@bits.ac.in'),
('Dutta','HSS','H101','dutta@bits.ac.in'),
('Roy HSS','HSS','H102','roy@bits.ac.in'),
('Sen HSS','HSS','H102','sen@bits.ac.in'),
('Ghosh','HSS','H103','ghosh@bits.ac.in'),

('Pillai','INSTR','I101','pillai@bits.ac.in'),
('Menon','INSTR','I101','menon@bits.ac.in'),
('Kumar','INSTR','I102','kumar@bits.ac.in'),
('Rao','INSTR','I102','rao@bits.ac.in'),
('Das INSTR','INSTR','I103','das@bits.ac.in');
