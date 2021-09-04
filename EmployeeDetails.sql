use EmployeeLogin

CREATE TABLE LoginDetails
(
EmpId int,
UserName varchar(75),
Pasword varchar(10),
EmpDept varchar(20),
EmpStaus varchar(20)
)

alter table LoginDetails alter column EmpId int Not Null;
alter table LoginDetails add constraint pk_Login primary key(EmpId);

alter table LoginDetails add unique(UserName);
alter table LoginDetails alter column pasword varchar(10) Not Null;

alter table LoginDetails ADD CONSTRAINT pk_EmpDept default 'Development' for EmpDEPT;
ALTER TABLE LoginDetails add check(EmpStaus = 'Active');

insert into LoginDetails(EmpId,UserName,Pasword,EmpStaus) VALUES (1001,'@vivek123','vivek123','Active');
insert into LoginDetails(EmpId,UserName,Pasword,EmpStaus) VALUES (1002,'@krunal123','krunal123','Active');
insert into LoginDetails(EmpId,UserName,Pasword,EmpStaus) VALUES (1003,'@nirbhay123','nirbhay123','Active');
insert into LoginDetails(EmpId,UserName,Pasword,EmpStaus) VALUES (1004,'@abhi123','abhi123','Active');
insert into LoginDetails(EmpId,UserName,Pasword,EmpStaus) VALUES (1005,'@sameer123','sameer123','Active');
insert into LoginDetails(EmpId,UserName,Pasword,EmpStaus) VALUES (1006,'@kunal123','kunal123','Active');

insert into LoginDetails(EmpId,UserName,Pasword,EmpDept,EmpStaus) VALUES (1007,'@kunal123','kunal123','sales','Active');

delete from LoginDetails where EmpId = 1007;


select * from LoginDetails;

truncate table LoginDetails;

select * from LoginDetails;

alter table LoginDetails add DeptId int not null;

select * from LoginDetails;

insert into LoginDetails(EmpId,UserName,Pasword,EmpStaus,DeptId) VALUES (1001,'@vivek123','vivek123','Active',101);
insert into LoginDetails(EmpId,UserName,Pasword,EmpStaus,DeptId) VALUES (1002,'@krunal123','krunal123','Active',102);
insert into LoginDetails(EmpId,UserName,Pasword,EmpStaus,DeptId) VALUES (1003,'@nirbhay123','nirbhay123','Active',103);
insert into LoginDetails(EmpId,UserName,Pasword,EmpStaus,DeptId) VALUES (1004,'@abhi123','abhi123','Active',104);
insert into LoginDetails(EmpId,UserName,Pasword,EmpStaus,DeptId) VALUES (1005,'@sameer123','sameer123','Active',105);
insert into LoginDetails(EmpId,UserName,Pasword,EmpStaus,DeptId) VALUES (1006,'@kunal123','kunal123','Active',106);

select * from LoginDetails;

create table Department
(
DeptId int primary key,
deptName varchar(75) not null,
)

drop table Department;

create table Department
(
DeptId int primary key,
EmpId int,
deptName varchar(75) not null,
)

ALTER TABLE Department
ADD CONSTRAINT pk_DeptId
FOREIGN KEY (EmpId) REFERENCES LoginDetails(EmpId);

alter table department add constraint pk_deptName default 'Developement' for deptName;

insert into Department(DeptId,EmpId) values (101,1001);
insert into Department(DeptId,EmpId) values (102,1002);
insert into Department(DeptId,EmpId) values (103,1003);
insert into Department(DeptId,EmpId) values (104,1004);
insert into Department(DeptId,EmpId) values (105,1005);
insert into Department(DeptId,EmpId) values (106,1006);

select * from Department;