DROP TABLE IF EXISTS CoursesTaken;
DROP TABLE IF EXISTS CourseDetails;
DROP TABLE IF EXISTS Professors;

-------------------------------------------------
-- PROFESSORS
-------------------------------------------------

CREATE TABLE Professors (
    prof_name VARCHAR(100) PRIMARY KEY,
    department VARCHAR(50),
    chamber VARCHAR(50),
    prof_mail VARCHAR(100)
);

-------------------------------------------------
-- COURSE DETAILS
-------------------------------------------------

CREATE TABLE CourseDetails (
    course_id VARCHAR(20) PRIMARY KEY,
    course_name VARCHAR(100),

    prof_name VARCHAR(100),

    timing VARCHAR(50),
    place VARCHAR(50),
    components VARCHAR(10),
    course_credits INT,
    midsem_date VARCHAR(50),
    compre_date VARCHAR(50),

    FOREIGN KEY (prof_name)
    REFERENCES Professors(prof_name)
);

-------------------------------------------------
-- COURSES TAKEN
-------------------------------------------------

CREATE TABLE CoursesTaken (

    student_id INT,
    course_id VARCHAR(20),
    grade VARCHAR(2),

    PRIMARY KEY (student_id, course_id),

    FOREIGN KEY (course_id)
    REFERENCES CourseDetails(course_id)

);

INSERT INTO Professors VALUES
('Indrani Talukdar','BIO','C302','indrani@bits'),
('Raviprasad Aduri','BIO','C302','aduri@bits'),
('Sumit Biswas','BIO','C302','sumit@bits'),
('Kundan Kumar','BIO','C404','kundan@bits'),
('Malabika Biswas','BIO','C404','malabika@bits'),
('Rajesh Mehrotra','BIO','C404','rajesh@bits'),
('Vijayashree Nayak','BIO','C302','nayak@bits'),
('Dibakar Chakrabarty','BIO','C302','dibakar@bits');

INSERT INTO CourseDetails VALUES
('BIOF101','Intro Biological Sciences','Indrani Talukdar','MW2','LT4','L',3,'13/03/26','14/05/26'),
('BIOF215','Biophysics','Sumit Biswas','TTH3','C302','L',3,'11/03/26','08/05/26'),
('BIOF241','Ecology & Env Sci','Kundan Kumar','MWF5','C404','L',3,'12/03/26','02/05/26'),
('BIOF243','Genetics','Rajesh Mehrotra','TTH5','C404','L',3,'10/03/26','07/05/26'),
('BIOF342','Immunology','Vijayashree Nayak','MWF2','C302','L',3,'15/03/26','15/05/26'),
('BIOF341','Developmental Biology','Dibakar Chakrabarty','TTH2','C302','L',3,'09/03/26','04/05/26'),
('BIOF242','Bioinformatics','Sukanta Mondal','TTH3','C404','L',3,'13/03/26','13/05/26'),
('BIOF244','Instr Methods of Analysis','Malabika Biswas','F7','C404','L',4,'14/03/26','11/05/26');

INSERT INTO Professors VALUES
('Sutapa Roy Ramanan','CHE','A503','sutapa@bits'),
('Upasana Mahanta','CHE','A503','upasana@bits'),
('Paramita Haldar','CHE','A503','paramita@bits'),
('Richa Singhal','CHE','A503','richa@bits'),
('Saroj Sundar Baral','CHE','A503','saroj@bits'),
('Manas Ranjan Behera','CHE','A503','manas@bits'),
('Srinivas Krishnaswamy','CHE','A605','srinivas@bits'),
('Amol Deshpande','CHE','A605','amol@bits');

INSERT INTO CourseDetails VALUES
('CHEF241','Heat Transfer','Sutapa Roy Ramanan','MWF4','A503','L',3,'13/03/26','13/05/26'),
('CHEF242','Numerical Methods for Chem Engg','Paramita Haldar','MWF5','A503','L',3,'12/03/26','02/05/26'),
('CHEF243','Material Science & Engg','Richa Singhal','TTH4','A503','L',3,'14/03/26','11/05/26'),
('CHEF244','Separation Processes I','Saroj Sundar Baral','TTH5','A503','L',3,'10/03/26','06/05/26'),
('CHEF343','Process Design Principles II','Srinivas Krishnaswamy','MWF2','A605','L',3,'10/03/26','06/05/26'),
('CHEF342','Process Dynamics & Control','Amol Deshpande','TTH3','A605','L',3,'14/03/26','11/05/26'),
('CHEF241T','Heat Transfer Tutorial','Upasana Mahanta','T9','A503','T',1,'13/03/26','13/05/26'),
('CHEF244T','Separation Tutorial','Manas Ranjan Behera','M1','A503','T',1,'10/03/26','06/05/26');

INSERT INTO Professors VALUES
('Shubhangi Gawali','CS','LT1','shubhangi@bits'),
('A Baskar','CS','LT1','baskar@bits'),
('Aniket Basu Roy','CS','LT1','aniket@bits'),
('Limaye Girija Deepak','CS','LT1','limaye@bits'),
('Manideepa Mukherjee Bhakat','CS','LT1','manideepa@bits'),
('Gargi Sanket Prabhu','CS','LT1','gargi@bits'),
('Sougata Sen','CS','LT1','sen@bits'),
('Biju K Raveendran','CS','DLT5','biju@bits');

INSERT INTO CourseDetails VALUES
('CSF211','Data Structures & Algorithms','Aniket Basu Roy','MWF4','LT1','L',4,'10/03/26','06/05/26'),
('CSF212','Database Systems','Shubhangi Gawali','TTH8','LT1','L',4,'13/03/26','13/05/26'),
('CSF241','Microprocessors & Interfacing','Manideepa Mukherjee Bhakat','MW5','LT1','L',4,'14/03/26','11/05/26'),
('CSF303','Computer Networks','Sougata Sen','TTH3','LT1','L',4,'13/03/26','13/05/26'),
('CSF314','Software Dev for Portable Devices','Swaroop Joshi','W45','C301','L',3,'13/03/26','14/05/26'),
('CSF320','Foundations of Data Science','Snehanshu Saha','MWF8','DLT8','L',3,'09/03/26','05/05/26'),
('CSF372','Operating Systems','Biju K Raveendran','MWF9','DLT5','L',3,'07/03/26','16/05/26'),
('CSF363','Compiler Construction','Santonu Sarkar','T12','LT1','L',3,'10/03/26','06/05/26');

INSERT INTO Professors VALUES
('Tincy Lis Thomas','PHY','C402','tincy@bits'),
('Subhadeep Banerjee','PHY','C402','subhadeep@bits'),
('Sunil Bhand','PHY','C305','sunil@bits'),
('Bhavana P','PHY','A603','bhavana_phy@bits'),
('Narendra Nath Ghosh','PHY','A603','ghosh@bits'),
('Vankayala Kiran','PHY','A603','kiran@bits'),
('Prakash Halan','PHY','A603','halan@bits'),
('Sandip Kumar Nandi','PHY','C305','nandi@bits');

INSERT INTO CourseDetails VALUES
('PHYF241','Inorganic Chemistry II','Subhadeep Banerjee','TTH3','A603','L',3,'11/03/26','08/05/26'),
('PHYF244','Physical Chemistry III','Sandip Kumar Nandi','MWF5','C306','L',3,'12/03/26','02/05/26'),
('PHYF342','Organic Chemistry IV','Tincy Lis Thomas','MWF3','C402','L',3,'15/03/26','15/05/26'),
('PHYF414','Bio & Chemical Sensors','Sunil Bhand','MWF8','C305','L',3,'09/03/26','05/05/26'),
('PHYF327','Electrochemistry','Vankayala Kiran','TTH5','C306','L',3,'10/03/26','07/05/26'),
('PHYF323','Biophysical Chemistry','Narendra Nath Ghosh','MWF4','C305','L',3,'13/03/26','14/05/26'),
('PHYF343','Inorganic Chemistry III','Prakash Halan','TTH3','A603','L',3,'11/03/26','08/05/26'),
('PHYF243','Organic Chemistry II','Bhavana P','MWF9','A603','L',3,'07/03/26','16/05/26');

INSERT INTO Professors VALUES
('Raviprasad Aduri','ECE','C302','aduri@bits'),
('Sukanta Mondal','ECE','C404','mondal@bits'),
('Veeky Baths','ECE','C404','veeky@bits'),
('Rajesh Mehrotra','ECE','C404','rajesh_ece@bits'),
('Malabika Biswas','ECE','C404','malabika_ece@bits'),
('Anasuya Ganguly','ECE','C404','anasuya@bits'),
('Arundhoti Das','ECE','C404','arundhoti@bits'),
('Sonal Ayakar','ECE','C404','sonal@bits');

INSERT INTO CourseDetails VALUES
('ECEF242','Intro to Bioinformatics','Sukanta Mondal','TTH3','C404','L',3,'13/03/26','13/05/26'),
('ECEF243','Genetics','Rajesh Mehrotra','TTH5','C404','L',3,'10/03/26','07/05/26'),
('ECEF241','Ecology & Env Sci','Malabika Biswas','MWF5','C404','L',3,'12/03/26','02/05/26'),
('ECEF244','Instr Methods Analysis','Anasuya Ganguly','F7','C404','L',4,'14/03/26','11/05/26'),
('ECEF215','Biophysics','Raviprasad Aduri','TTH3','C302','L',3,'11/03/26','08/05/26'),
('ECEF341','Developmental Biology','Dibakar Chakrabarty','TTH2','C302','L',3,'09/03/26','04/05/26'),
('ECEF342','Immunology','Vijayashree Nayak','MWF2','C302','L',3,'15/03/26','15/05/26'),
('ECEF101','Intro Bio','Indrani Talukdar','MW2','LT4','L',3,'13/03/26','14/05/26');

INSERT INTO Professors VALUES
('Sutapa Roy Ramanan','EEE','A503','sutapa_eee@bits'),
('Upasana Mahanta','EEE','A503','upasana_eee@bits'),
('Paramita Haldar','EEE','A503','paramita_eee@bits'),
('Richa Singhal','EEE','A503','richa_eee@bits'),
('Saroj Sundar Baral','EEE','A503','saroj_eee@bits'),
('Manas Ranjan Behera','EEE','A503','manas_eee@bits'),
('Srinivas Krishnaswamy','EEE','A605','srinivas_eee@bits'),
('Amol Deshpande','EEE','A605','amol_eee@bits');

INSERT INTO CourseDetails VALUES
('EEEF241','Heat Transfer','Sutapa Roy Ramanan','MWF4','A503','L',3,'13/03/26','13/05/26'),
('EEEF242','Numerical Methods','Paramita Haldar','MWF5','A503','L',3,'12/03/26','02/05/26'),
('EEEF243','Material Science','Richa Singhal','TTH4','A503','L',3,'14/03/26','11/05/26'),
('EEEF244','Separation Process','Saroj Sundar Baral','TTH5','A503','L',3,'10/03/26','06/05/26'),
('EEEF343','Process Design','Srinivas Krishnaswamy','MWF2','A605','L',3,'10/03/26','06/05/26'),
('EEEF342','Process Control','Amol Deshpande','TTH3','A605','L',3,'14/03/26','11/05/26'),
('EEEF241T','Heat Transfer T','Upasana Mahanta','T9','A503','T',1,'13/03/26','13/05/26'),
('EEEF244T','Separation T','Manas Ranjan Behera','M1','A503','T',1,'10/03/26','06/05/26');

INSERT INTO Professors VALUES
-- ECON
('Basavadatta Mitra','ECON','C301','mitra@bits'),
('Reena Cheruvalath','ECON','A505','reena@bits'),
('Mohan Kumar Bera','ECON','LT4','bera@bits'),
('Nilanjana Goswami','ECON','LT3','goswami@bits'),
('Solano Da Silva','ECON','LT3','solano@bits'),
('Anu K Antony','ECON','LT4','anu@bits'),
('Hareesh A G','ECON','LT4','hareesh@bits'),
('Sayantani Sarkar','ECON','LT4','sayantani@bits'),

-- MAC
('Prasanna Kumar N','MAC','M101','prasanna@bits'),
('Snehanshu Saha','MAC','DLT8','saha@bits'),
('Santonu Sarkar','MAC','LT1','sarkar@bits'),
('Hemant Rathore','MAC','D102','rathore@bits'),
('Ashwin Srinivasan','MAC','DLT7','ashwin@bits'),
('Raunak Manekar','MAC','C307','raunak@bits'),
('Subhadip Singha','MAC','DLT5','singha@bits'),
('Sanjib Dey','MAC','C401','dey@bits'),

-- MATH
('Prakash Halan','MATH','A603','halan@bits'),
('Narendra Nath Ghosh','MATH','A603','ghosh@bits'),
('Woormileela Sinha','MATH','A601','sinha@bits'),
('Sudipta Chatterjee','MATH','A502','sudipta@bits'),
('Mainak Banerjee','MATH','A603','mainak@bits'),
('Amrita Chatterjee','MATH','A603','amrita@bits'),
('Sandip Kumar Nandi','MATH','C305','nandi@bits'),
('Uttara Basu','MATH','A603','uttara@bits');

INSERT INTO CourseDetails VALUES

-- ECON
('ECONF419','Management of Cross Cultural Teams','Basavadatta Mitra','MWF5','TBA','L',3,'09/03/26','04/05/26'),
('ECONF101','General Course','Reena Cheruvalath','TTH8','LT4','L',3,'10/03/26','07/05/26'),
('ECONF102','General Course 2','Mohan Kumar Bera','TTH8','LT4','L',3,'10/03/26','07/05/26'),
('ECONF103','General Course 3','Nilanjana Goswami','TTH9','LT3','L',3,'10/03/26','07/05/26'),
('ECONF104','General Course 4','Solano Da Silva','TTH9','LT3','L',3,'10/03/26','07/05/26'),
('ECONF105','General Course 5','Anu K Antony','TTH7','LT4','L',3,'10/03/26','07/05/26'),
('ECONF106','General Course 6','Hareesh A G','TTH7','LT4','L',3,'10/03/26','07/05/26'),
('ECONF107','General Course 7','Sayantani Sarkar','TTH7','LT4','L',3,'10/03/26','07/05/26'),

-- MAC
('MACF320','Foundations of Data Science','Snehanshu Saha','MWF8','DLT8','L',3,'09/03/26','05/05/26'),
('MACF363','Compiler Construction','Santonu Sarkar','T12','LT1','L',3,'10/03/26','06/05/26'),
('MACF415','Data Mining','Hemant Rathore','TTH7','D102','L',3,'12/03/26','02/05/26'),
('MACF407','Artificial Intelligence','Ashwin Srinivasan','MWF5','DLT7','L',3,'09/03/26','04/05/26'),
('MACF425','Deep Learning','Raunak Manekar','TTH10','C307','L',3,'11/03/26','09/05/26'),
('MACF463','Cryptography','Subhadip Singha','MWF8','DLT5','L',3,'09/03/26','05/05/26'),
('MACF386','Quantum Info','Sanjib Dey','MWF8','C401','L',3,'09/03/26','05/05/26'),
('MACF211','Math Course','Prasanna Kumar N','TBA','TBA','L',3,'TBA','TBA'),

-- MATH
('MATHF241','Inorganic II','Woormileela Sinha','TTH4','A603','L',3,'14/03/26','12/05/26'),
('MATHF243','Organic II','Sudipta Chatterjee','MWF9','A603','L',3,'07/03/26','16/05/26'),
('MATHF244','Physical III','Mainak Banerjee','MWF5','C306','L',3,'12/03/26','02/05/26'),
('MATHF323','Biophysical','Sandip Kumar Nandi','MWF4','C305','L',3,'13/03/26','14/05/26'),
('MATHF327','Electrochem','Narendra Nath Ghosh','TTH5','C306','L',3,'10/03/26','07/05/26'),
('MATHF342','Organic IV','Amrita Chatterjee','MWF3','C402','L',3,'15/03/26','15/05/26'),
('MATHF343','Inorganic III','Prakash Halan','TTH3','A603','L',3,'11/03/26','08/05/26'),
('MATHF325','Polymer','Uttara Basu','MWF4','A501','L',3,'13/03/26','14/05/26');

-- ================= PROFESSORS =================

INSERT INTO Professors VALUES

-- ME
('Srinivas Krishnaswamy','ME','A605','srinivas_me@bits'),
('Amol Deshpande','ME','A605','amol_me@bits'),
('Saroj Sundar Baral','ME','A503','saroj_me@bits'),
('Richa Singhal','ME','A503','richa_me@bits'),
('Paramita Haldar','ME','A503','paramita_me@bits'),
('Upasana Mahanta','ME','A503','upasana_me@bits'),
('Manas Ranjan Behera','ME','A503','manas_me@bits'),
('Sutapa Roy Ramanan','ME','A503','sutapa_me@bits'),

-- GS
('Mohan Kumar Bera','GS','LT4','bera_gs@bits'),
('Reena Cheruvalath','GS','A505','reena_gs@bits'),
('Basavadatta Mitra','GS','C301','mitra_gs@bits'),
('Nilanjana Goswami','GS','LT3','goswami_gs@bits'),
('Solano Da Silva','GS','LT3','solano_gs@bits'),
('Anu K Antony','GS','LT4','anu_gs@bits'),
('Hareesh A G','GS','LT4','hareesh_gs@bits'),
('Sayantani Sarkar','GS','LT4','sayantani_gs@bits'),

-- HSS
('Indrani Talukdar','HSS','C302','indrani_hss@bits'),
('Raviprasad Aduri','HSS','C302','aduri_hss@bits'),
('Sumit Biswas','HSS','C302','sumit_hss@bits'),
('Malabika Biswas','HSS','C404','malabika_hss@bits'),
('Rajesh Mehrotra','HSS','C404','rajesh_hss@bits'),
('Vijayashree Nayak','HSS','C302','nayak_hss@bits'),
('Dibakar Chakrabarty','HSS','C302','dibakar_hss@bits'),
('Sukanta Mondal','HSS','C404','mondal_hss@bits');


-- ================= COURSES =================

INSERT INTO CourseDetails VALUES

-- ME
('MEF241','Heat Transfer','Srinivas Krishnaswamy','MWF4','A605','L',3,'13/03/26','13/05/26'),
('MEF242','Numerical Methods','Paramita Haldar','MWF5','A503','L',3,'12/03/26','02/05/26'),
('MEF243','Material Science','Richa Singhal','TTH4','A503','L',3,'14/03/26','11/05/26'),
('MEF244','Separation Process','Saroj Sundar Baral','TTH5','A503','L',3,'10/03/26','06/05/26'),
('MEF343','Process Design','Amol Deshpande','MWF2','A605','L',3,'10/03/26','06/05/26'),
('MEF342','Process Control','Sutapa Roy Ramanan','TTH3','A605','L',3,'14/03/26','11/05/26'),
('MEF241T','Heat Transfer T','Upasana Mahanta','T9','A503','T',1,'13/03/26','13/05/26'),
('MEF244T','Separation T','Manas Ranjan Behera','M1','A503','T',1,'10/03/26','06/05/26'),

-- GS
('GSF101','General Studies 1','Mohan Kumar Bera','TTH8','LT4','L',3,'10/03/26','07/05/26'),
('GSF102','General Studies 2','Reena Cheruvalath','TTH8','LT4','L',3,'10/03/26','07/05/26'),
('GSF103','General Studies 3','Basavadatta Mitra','TTH9','LT3','L',3,'10/03/26','07/05/26'),
('GSF104','General Studies 4','Nilanjana Goswami','TTH9','LT3','L',3,'10/03/26','07/05/26'),
('GSF105','General Studies 5','Solano Da Silva','TTH7','LT4','L',3,'10/03/26','07/05/26'),
('GSF106','General Studies 6','Anu K Antony','TTH7','LT4','L',3,'10/03/26','07/05/26'),
('GSF107','General Studies 7','Hareesh A G','TTH7','LT4','L',3,'10/03/26','07/05/26'),
('GSF108','General Studies 8','Sayantani Sarkar','TTH7','LT4','L',3,'10/03/26','07/05/26'),

-- HSS
('HSSF241','Ecology','Malabika Biswas','MWF5','C404','L',3,'12/03/26','02/05/26'),
('HSSF243','Genetics','Rajesh Mehrotra','TTH5','C404','L',3,'10/03/26','07/05/26'),
('HSSF215','Biophysics','Sumit Biswas','TTH3','C302','L',3,'11/03/26','08/05/26'),
('HSSF341','Developmental Bio','Dibakar Chakrabarty','TTH2','C302','L',3,'09/03/26','04/05/26'),
('HSSF342','Immunology','Vijayashree Nayak','MWF2','C302','L',3,'15/03/26','15/05/26'),
('HSSF101','Intro Bio','Indrani Talukdar','MW2','LT4','L',3,'13/03/26','14/05/26'),
('HSSF242','Bioinformatics','Sukanta Mondal','TTH3','C404','L',3,'13/03/26','13/05/26'),
('HSSF244','Instr Methods','Raviprasad Aduri','F7','C404','L',4,'14/03/26','11/05/26');

-- ================= PROFESSORS =================

INSERT INTO Professors VALUES

-- INSTR
('Jegatha Nambi Krishnan','INSTR','A601','jegatha@bits'),
('Bibek Uprety','INSTR','A601','bibek@bits'),
('Sundari R','INSTR','A601','sundari@bits'),
('Asima Shaukat','INSTR','A601','asima@bits'),
('Narendra Nath Ghosh_I','INSTR','A603','ghosh_i@bits'),
('Mainak Banerjee_I','INSTR','A603','mainak_i@bits'),
('Amrita Chatterjee_I','INSTR','A603','amrita_i@bits'),
('Sandip Kumar Nandi_I','INSTR','C305','nandi_i@bits'),

-- BITS
('Prasanna Kumar N','BITS','M101','prasanna_bits@bits'),
('Snehanshu Saha_B','BITS','DLT8','saha_bits@bits'),
('Santonu Sarkar_B','BITS','LT1','sarkar_bits@bits'),
('Hemant Rathore_B','BITS','D102','rathore_bits@bits'),
('Ashwin Srinivasan_B','BITS','DLT7','ashwin_bits@bits'),
('Raunak Manekar_B','BITS','C307','raunak_bits@bits'),
('Subhadip Singha_B','BITS','DLT5','singha_bits@bits'),
('Sanjib Dey_B','BITS','C401','dey_bits@bits'),

-- extra CS
('Gargi Sanket Prabhu','CS','LT1','gargi@bits'),
('Swaroop Joshi','CS','C301','swaroop@bits'),
('Snehanshu Saha_CS','CS','DLT8','saha_cs@bits'),
('Santonu Sarkar_CS','CS','LT1','sarkar_cs@bits'),
('Hemant Rathore_CS','CS','D102','rathore_cs@bits'),
('Ashwin Srinivasan_CS','CS','DLT7','ashwin_cs@bits'),
('Raunak Manekar_CS','CS','C307','raunak_cs@bits'),
('Subhadip Singha_CS','CS','DLT5','singha_cs@bits');


-- ================= COURSES =================

INSERT INTO CourseDetails VALUES

-- INSTR
('INSTRF241','Instrumentation I','Jegatha Nambi Krishnan','MWF3','A601','L',3,'11/03/26','08/05/26'),
('INSTRF242','Sensors','Bibek Uprety','TTH4','A601','L',3,'12/03/26','09/05/26'),
('INSTRF243','Control Systems','Sundari R','MWF5','A601','L',3,'13/03/26','10/05/26'),
('INSTRF244','Signal Processing','Asima Shaukat','TTH6','A601','L',3,'14/03/26','11/05/26'),
('INSTRF341','Advanced Instr','Narendra Nath Ghosh_I','MWF2','A603','L',3,'10/03/26','06/05/26'),
('INSTRF342','Industrial Control','Mainak Banerjee_I','TTH3','A603','L',3,'11/03/26','07/05/26'),
('INSTRF343','Measurement Lab','Amrita Chatterjee_I','F4','C305','P',2,'12/03/26','08/05/26'),
('INSTRF344','Process Instr','Sandip Kumar Nandi_I','MWF7','C305','L',3,'13/03/26','09/05/26'),

-- BITS
('BITSF101','BITS Course 1','Prasanna Kumar N','MWF1','M101','L',3,'10/03/26','06/05/26'),
('BITSF102','BITS Course 2','Snehanshu Saha_B','MWF8','DLT8','L',3,'09/03/26','05/05/26'),
('BITSF103','BITS Course 3','Santonu Sarkar_B','TTH2','LT1','L',3,'10/03/26','06/05/26'),
('BITSF104','BITS Course 4','Hemant Rathore_B','TTH7','D102','L',3,'12/03/26','02/05/26'),
('BITSF105','BITS Course 5','Ashwin Srinivasan_B','MWF5','DLT7','L',3,'09/03/26','04/05/26'),
('BITSF106','BITS Course 6','Raunak Manekar_B','TTH10','C307','L',3,'11/03/26','09/05/26'),
('BITSF107','BITS Course 7','Subhadip Singha_B','MWF8','DLT5','L',3,'09/03/26','05/05/26'),
('BITSF108','BITS Course 8','Sanjib Dey_B','MWF8','C401','L',3,'09/03/26','05/05/26'),

-- extra CS
('CSF411','Machine Learning','Gargi Sanket Prabhu','MWF4','LT1','L',3,'10/03/26','06/05/26'),
('CSF412','Distributed Systems','Swaroop Joshi','TTH3','C301','L',3,'11/03/26','07/05/26'),
('CSF413','Advanced DB','Snehanshu Saha_CS','MWF8','DLT8','L',3,'09/03/26','05/05/26'),
('CSF414','Cloud Computing','Santonu Sarkar_CS','TTH2','LT1','L',3,'10/03/26','06/05/26'),
('CSF415','AI','Hemant Rathore_CS','TTH7','D102','L',3,'12/03/26','02/05/26'),
('CSF416','Deep Learning','Ashwin Srinivasan_CS','MWF5','DLT7','L',3,'09/03/26','04/05/26'),
('CSF417','Cyber Security','Raunak Manekar_CS','TTH10','C307','L',3,'11/03/26','09/05/26'),
('CSF418','Cryptography','Subhadip Singha_CS','MWF8','DLT5','L',3,'09/03/26','05/05/26');

