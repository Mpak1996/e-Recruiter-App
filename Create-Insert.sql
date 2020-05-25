CREATE TABLE interview (
job_id int(4) NOT NULL,
recruiter_username varchar(12) NOT NULL ,
cand_username varchar(12) NOT NULL, 
num_interview TINYINT,
hmeromhnia date,
start_time time,
duration varchar (25) NOT NULL,
personality int(4) NOT NULL,
education int(4) NOT NULL ,
experience int(4) NOT NULL,
PRIMARY KEY (job_id ,recruiter_username , cand_username,num_interview),
CONSTRAINT douleia foreign key (job_id) REFERENCES job(id)  ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT RECRUITER foreign key (recruiter_username) REFERENCES recruiter(username) ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT INTER_cand FOREIGN KEY (cand_username) REFERENCES candidate (username)  ON DELETE CASCADE ON UPDATE CASCADE 
)engine=InnoDB;

insert into interview (job_id, recruiter_username, cand_username, num_interview, hmeromhnia, start_time, duration, personality, education, experience) values
( 1 , 'n_tri', 'abrown',1, '2018-12-21','10:00:00' , '30 minutes' , 4,5,4),
( 2,'n_tri', 'cleogeo',1, '2019-1-11','16:00:00', '20 minutes' , 4,1,5 ),
( 2, 'n_tri', 'zazahir23',1, '2019-1-11', '15:30:00','25 minutes', 3,4,4),
( 2, 'n_tri', 'lionarF' ,1,'2019-1-11','16:30:00','15 minutes', 3,3,4),
( 3 ,'n_tri', 'zazahir23',1, '2018-1-14', '09:00:00', '20 minutes' , 3,2,1),
( 3,'n_tri', 'lionarF',1, '2018-1-14' , '10:00:00', '25 minutes', 3,3,5),
( 4, 'msmith', 'liagourma',1, '2018-11-12', '11:15:00','25 minutes', 5,5,5),
( 4, 'msmith', 'mnikol',1, '2018-11-12', '11:50:00', '10 minutes', 0, 3 , 3),
( 5,'msmith', 'lionarF',1, '2019-2-3', '09:30:00', '30 minutes', 3, 4, 2),
( 6 , 'Giankost','zazahir23' ,1, '2019-1-12' , '10:00:00' , '15 minutes' , 3 , 4 ,5),
(6 , 'Giankost','lionarF' ,1, '2019-1-12' , '10:30:00' , '20 minutes' , 3 , 3 , 0),
(6,'Giankost', 'liagourma' ,1, '2019-1-12' , '11:00:00', '15 minutes' , 2,3, 3), 
(7, 'papad' , 'cleogeo',1, '2019-4-13', '13:00:00', '20 minutes', 4, 2, 4),
(7, 'papad', 'zazahir23',1, '2019-4-13' , '14:00:00' , '25 minutes' , 2 , 3 ,4),
(7, 'papad', 'lionarF', 1,'2019-4-13', '14:30:00', '20 minutes', 5,3, 4),
( 8 , 'bettyg', 'zazahir23' ,1, '2019-4-14', '10:00:00' , '20 minutes' , 3 ,4,4),
(9, 'papad' , 'lionarF',1, '2019-4-14', '11:00:00' , '30 minutes', 1 , 3, 0),
(9, 'papad', 'abrown',1, '2019-4-14', '11:45:00', '25 minutes', 3, 5, 5),
(10, 'pavkie' , 'liagourma',1, '2019-3-11', '17:30:00','10 minutes', 4,5, 4),
(11 ,'pavkie', 'mnikol',1,'2019-1-17', '15:30:00','15 minutes',3 , 2 ,2),
(11, 'pavkie', 'abrown' ,1, '2019-1-17', '14:00:00' ,'30 minutes',2,2,1),
(12 , 'varcon82' ,'zazahir23',1, '2019-1-5', '11:00:00' ,'45 minutes', 4,3 ,4),
(12, 'varcon82' , 'lionarF' ,1, '2019-1-5', '13:00:00', '20 minutes', 4, 3, 4),
(12 , 'varcon82' ,'zazahir23',2, '2019-1-7', '11:00:00' ,'45 minutes', 5,4 ,4),
(12 , 'varcon82' ,'zazahir23',3, '2019-1-7', '11:00:00' ,'45 minutes', 3,4 ,4)
;

CREATE TABLE istoriko (
username varchar(12) NOT NULL, 
time timestamp,
imerominia date,
energeia ENUM('insert', 'update', 'delete'),
epityxia enum('yes','no'),
pinakas varchar(12),
PRIMARY KEY (username)
)engine=InnoDB;

CREATE TABLE `fields` (
title varchar(60),
perigrafh text(100),
belongs_to varchar(60),
PRIMARY KEY (title),
CONSTRAINT TOMEIS FOREIGN KEY (belongs_to) REFERENCES `fields`(title) ON DELETE CASCADE ON UPDATE CASCADE
)engine=InnoDB;

insert into `fields` (title,perigrafh,belongs_to) values
('Computer Engineering', ' Root element, no more general fields' , NULL),
('Computer Architecture', 'level 1 element,child of computer engineering','Computer Engineering'),
('Logic Design', 'level 2 element,child of Computer Architecture', 'Computer Architecture'),
('MicroProcessors', 'level 2 element,child of Computer Architecture', 'Computer Architecture'),
('Digital Signal Processing', 'level 1 element,child of Computer Engineering' , 'Computer Engineering'),
('Telecommunications' , 'level 1 element,child of Digital Signal Processing' , 'Digital Signal Processing' ),
('Digital imagine and sound analysis', 'level 1 element,child of Digital Signal Processing' , 'Digital Signal Processing' )
;


CREATE TABLE has_fields (
fields_title varchar(60),
etair_AFM char(9),
PRIMARY KEY (fields_title , etair_AFM),
CONSTRAINT POU_EINAI_TOMEIS FOREIGN KEY (fields_title) REFERENCES `fields`(title) ON DELETE CASCADE ON UPDATE CASCADE,
CONSTRAINT ETERIA FOREIGN KEY (etair_AFM) REFERENCES etaireia(AFM) ON DELETE CASCADE ON UPDATE CASCADE
)engine=InnoDB;

insert into has_fields (fields_title ,etair_AFM) values
('Computer Architecture', '023453344' ),
('Logic Design', '023451232'),
('MicroProcessors' , '123432211'),
('Digital Signal Processing','561234561'),
('Telecommunications' , '18765549' ),
('Digital imagine and sound analysis' , '23122345' )
;
