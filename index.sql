create database student_examination_sys;
use student_examination_sys;

create table student (
  id varchar(10),
  `name` varchar(32) not null,
  age int not null,
  sex varchar(6) not null,
  primary key(id)
);

insert into student values ('001', 'zhangsan', 18, 'male');
insert into student values ('002', 'lisi', 20, 'female');

create table `subject` (
  id int(11) auto_increment,
  `subject` varchar(32) not null,
  teacher varchar(32) not null,
  `description` varchar(250) not null,
  primary key(id)
) auto_increment = 1001;

insert into `subject` (`subject`, teacher, `description`)
  values ('Chinese', 'Mr.Wang', 'the exam is easy');
insert into `subject` (`subject`, teacher, `description`)
  values ('math', 'Miss Liu', 'the exam is difficult');

create table score (
  id int(11) auto_increment,
  student_id varchar(10) not null,
  subject_id int(11) not null,
  score decimal(5, 2) not null,
  primary key(id) 
);

insert into score(student_id, subject_id, score)
  values ('001', 1001, 80);
insert into score(student_id, subject_id, score)
  values ('002', 1002, 60);
insert into score(student_id, subject_id, score)
  values ('001', 1001, 70);
insert into score(student_id, subject_id, score)
  values ('002', 1002, 60.5);      
