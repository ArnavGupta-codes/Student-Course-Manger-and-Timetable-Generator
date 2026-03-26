DROP TABLE IF EXISTS CoursesTaken;
DROP TABLE IF EXISTS CourseDetails;
DROP TABLE IF EXISTS Professors;

-------------------------------------------------
-- TABLE 1
-------------------------------------------------

CREATE TABLE CourseDetails (
    course_id VARCHAR(20) PRIMARY KEY,
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

CREATE TABLE Professors (
    prof_name VARCHAR(100) PRIMARY KEY,
    department VARCHAR(50),
    chamber VARCHAR(50),
    prof_mail VARCHAR(100)
);

-------------------------------------------------
-- TABLE 3
-------------------------------------------------

CREATE TABLE CoursesTaken (
    student_id INT,
    course_id VARCHAR(20),
    grade VARCHAR(2),

    PRIMARY KEY (student_id, course_id),

    FOREIGN KEY (course_id)
    REFERENCES CourseDetails(course_id)
);

-------------------------------------------------
-- INSERT COURSES
-------------------------------------------------

INSERT INTO CourseDetails VALUES

-- CS
('CS211','Data Structures','Aniket','Limaye','MWF4','LT1','L',4,'10/03','06/05'),
('CS212','Database Systems','Shubhangi','Baskar','TTH8','LT1','L',4,'13/03','13/05'),
('CS303','Networks','Sougata','Das','TTH3','LT1','L',4,'13/03','13/05'),
('CS372','Operating Systems','Biju','Biju','MWF9','DLT5','L',3,'07/03','16/05'),
('CS364','Algorithms','Bharat','Bharat','MWF3','LT1','L',3,'14/03','11/05'),

-- BIO
('BIO101','Intro Bio','Indrani','Aduri','MW2','LT4','L',3,'13/03','14/05'),
('BIO215','Biophysics','Sumit','Aduri','TTH3','C302','L',3,'11/03','08/05'),
('BIO241','Ecology','Kundan','Malabika','MWF5','C404','L',3,'12/03','02/05'),
('BIO243','Genetics','Rajesh','Malabika','TTH5','C404','L',3,'10/03','07/05'),
('BIO342','Immunology','Nayak','Meenal','MWF2','C302','L',3,'15/03','15/05'),

-- CHEM
('CHEM101','Chemistry','Bhavana','Raghu','MW3','LT3','L',3,'13/03','14/05'),
('CHEM241','Inorganic','Saurav','Sinha','TTH4','A603','L',3,'14/03','12/05'),
('CHEM243','Organic','Roy','Rashmi','MWF9','A603','L',3,'07/03','16/05'),
('CHEM244','Physical','Anjan','Raghu','MWF5','C306','L',3,'12/03','02/05'),
('CHEM327','Electro','Kiran','Bhavana','TTH5','C306','L',3,'10/03','07/05'),

-- PHY
('PHY111','Mechanics','Sharma','Singh','MWF2','LT2','L',3,'11/03','09/05'),
('PHY112','EM','Kumar','Gupta','TTH3','LT2','L',3,'12/03','10/05'),
('PHY241','Modern','Banerjee','Sinha','MWF5','A501','L',3,'14/03','12/05'),
('PHY342','Quantum','Roy','Roy','TTH6','A502','L',3,'15/03','14/05'),
('PHY110','Physics Lab','TBA','TBA','TBA','LAB','P',1,'TBA','TBA'),

-- ECON
('ECON211','Economics','Ghosh','Ghosh','MWF1','C301','L',3,'11/03','09/05'),
('ECON212','Macro','Banerjee','Banerjee','TTH2','C301','L',3,'12/03','10/05'),
('ECON241','Econometrics','Sen','Sen','MWF6','C302','L',3,'14/03','12/05'),
('ECON242','Game','Mitra','Mitra','TTH5','C302','L',3,'15/03','13/05'),
('ECON243','Finance','Roy','Roy','MWF7','C303','L',3,'16/03','14/05'),

-- ECE
('ECE211','Signals','Kulkarni','Kulkarni','MWF3','A101','L',3,'11/03','09/05'),
('ECE212','Digital','Patil','Patil','TTH4','A101','L',3,'12/03','10/05'),
('ECE241','Comm','Rao','Rao','MWF5','A102','L',3,'14/03','12/05'),
('ECE242','Control','Nair','Nair','TTH6','A102','L',3,'15/03','13/05'),
('ECE243','VLSI','Iyer','Iyer','MWF8','A103','L',3,'16/03','14/05'),

-- ME
('ME211','Mechanics','Reddy','Reddy','MWF1','ME101','L',3,'11/03','09/05'),
('ME212','Thermo','Pillai','Pillai','TTH2','ME101','L',3,'12/03','10/05'),
('ME241','Fluid','Nair','Nair','MWF4','ME102','L',3,'14/03','12/05'),
('ME242','Design','Kumar','Kumar','TTH5','ME102','L',3,'15/03','13/05'),
('ME243','Manufacturing','Singh','Singh','MWF7','ME103','L',3,'16/03','14/05');

-------------------------------------------------
-- INSERT PROFESSORS
-------------------------------------------------

INSERT INTO Professors VALUES
('Aniket','CS','LT1','aniket@bits'),
('Shubhangi','CS','LT1','shubhangi@bits'),
('Sumit','BIO','C302','sumit@bits'),
('Bhavana','CHEM','A603','bhavana@bits'),
('Sharma','PHY','A501','sharma@bits'),
('Ghosh','ECON','C301','ghosh@bits'),
('Kulkarni','ECE','A101','kulkarni@bits'),
('Reddy','ME','ME101','reddy@bits'),
('Roy','PHY','A502','roy@bits'),
('Sen','ECON','C302','sen@bits');

INSERT INTO CourseDetails VALUES

-- EEE
('EEE211','Electrical Machines','Sharma','Sharma','MWF2','B101','L',3,'11/03','09/05'),
('EEE212','Power Systems','Gupta','Gupta','TTH3','B101','L',3,'12/03','10/05'),
('EEE241','Control Engg','Verma','Verma','MWF6','B102','L',3,'14/03','12/05'),
('EEE242','Power Electronics','Iyer','Iyer','TTH5','B102','L',3,'15/03','13/05'),
('EEE243','Networks','Singh','Singh','MWF7','B103','L',3,'16/03','14/05'),

-- MAC
('MAC211','Discrete Math','Iyer','Iyer','MWF1','M101','L',3,'11/03','09/05'),
('MAC212','Probability','Kulkarni','Kulkarni','TTH2','M101','L',3,'12/03','10/05'),
('MAC241','Linear Algebra','Mehta','Mehta','MWF4','M102','L',3,'14/03','12/05'),
('MAC242','Optimization','Nair','Nair','TTH5','M102','L',3,'15/03','13/05'),
('MAC243','Number Theory','Shah','Shah','MWF7','M103','L',3,'16/03','14/05'),

-- MATH
('MATH111','Calculus','Sharma','Sharma','MWF2','MA101','L',3,'11/03','09/05'),
('MATH112','Algebra','Gupta','Gupta','TTH3','MA101','L',3,'12/03','10/05'),
('MATH241','Diff Eq','Rao','Rao','MWF5','MA102','L',3,'14/03','12/05'),
('MATH242','Real Analysis','Bose','Bose','TTH6','MA102','L',3,'15/03','13/05'),
('MATH243','Complex','Sen','Sen','MWF8','MA103','L',3,'16/03','14/05'),

-- GS
('GS211','Technical Writing','Thomas','Thomas','MWF1','D201','L',2,'11/03','09/05'),
('GS212','Ethics','Das','Das','TTH2','D201','L',2,'12/03','10/05'),
('GS213','Communication','Roy','Roy','MWF4','D202','L',2,'14/03','12/05'),
('GS214','Critical Thinking','Sen','Sen','TTH6','D202','L',2,'15/03','13/05'),
('GS215','Report Writing','Nair','Nair','MWF7','D203','L',2,'16/03','14/05'),

-- HSS
('HSS211','Psychology','Bose','Bose','MWF3','H101','L',3,'11/03','09/05'),
('HSS212','Sociology','Dutta','Dutta','TTH4','H101','L',3,'12/03','10/05'),
('HSS241','Philosophy','Roy','Roy','MWF5','H102','L',3,'14/03','12/05'),
('HSS242','Politics','Sen','Sen','TTH6','H102','L',3,'15/03','13/05'),
('HSS243','History','Ghosh','Ghosh','MWF8','H103','L',3,'16/03','14/05'),

-- INSTR
('INSTR211','Measurements','Pillai','Pillai','MWF2','I101','L',3,'11/03','09/05'),
('INSTR212','Control','Menon','Menon','TTH3','I101','L',3,'12/03','10/05'),
('INSTR241','Sensors','Kumar','Kumar','MWF6','I102','L',3,'14/03','12/05'),
('INSTR242','Process','Rao','Rao','TTH5','I102','L',3,'15/03','13/05'),
('INSTR243','Instr Lab','Das','Das','MWF7','I103','P',2,'16/03','14/05'),

-- BITS
('BITS101','Innovation','Sanjay','Sanjay','W11','LT4','L',1,'TBA','TBA'),
('BITS102','Design','Avinash','Avinash','T1','LT4','L',4,'07/03','16/05'),
('BITS111','Thermo','Saurabh','Saurabh','MW4','LT4','L',3,'11/03','09/05'),
('BITS232','FDSA','Bharat','Bharat','MWF9','LT2','L',4,'07/03','16/05'),
('BITS241','Systems','Ram','Ram','W4','CC219','L',3,'TBA','TBA');

INSERT INTO Professors VALUES
('Gupta','EEE','B101','gupta@bits'),
('Verma','EEE','B102','verma@bits'),
('Iyer','MAC','M101','iyer@bits'),
('Mehta','MAC','M102','mehta@bits'),
('Kulkarni','MAC','M101','kulkarni@bits'),
('Bose','MATH','MA102','bose@bits'),
('Rao','MATH','MA102','rao@bits'),
('Thomas','GS','D201','thomas@bits'),
('Das','GS','D201','das@bits'),
('Dutta','HSS','H101','dutta@bits'),
('Pillai','INSTR','I101','pillai@bits'),
('Menon','INSTR','I101','menon@bits'),
('Sanjay','BITS','LT4','sanjay@bits'),
('Avinash','BITS','LT4','avinash@bits'),
('Ram','BITS','CC219','ram@bits');
