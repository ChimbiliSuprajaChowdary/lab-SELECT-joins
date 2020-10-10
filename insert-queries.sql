insert into role(id,name)values(1,'designer');
insert into role(id,name)values(2,'guide');
insert into role(id,name)values(3,'doctor');
insert into role(id,name)values(4,'helper');
insert into role(id,name)values(5,'cleaner');
select * from role;

insert into skill(id,description,name)values(1,'self learning','learn');
insert into skill(id,description,name)values(2,'technical skills','coding');
insert into skill(id,description,name)values(3,'medical skills','medical');
insert into skill(id,description,name)values(4,'dance skills','dance');
insert into skill(id,description,name)values(5,'management skills','manage');

select * from skill;

insert into post_type(id,name)values(1,'business');
insert into post_type(id,name)values(2,'business');
insert into post_type(id,name)values(3,'business');
insert into post_type(id,name)values(4,'non-business');
insert into post_type(id,name)values(5,'non-business');

select * from post_type;


insert into department(id,name)values(1,'bpo');
insert into department(id,name)values(2,'IT');
insert into department(id,name)values(3,'manage');
insert into department(id,name)values(4,'bpo');
insert into department(id,name)values(5,'IT');
select * from department;

insert into degree(id,department_id,name)values(1,1,'EEE');
insert into degree(id,department_id,name)values(2,2,'ECE');
insert into degree(id,department_id,name)values(3,1,'EEE');
insert into degree(id,department_id,name)values(4,1,'EEE');
insert into degree(id,department_id,name)values(5,2,'ECE');
select * from degree;

insert into profile(id,address,batch,degree_id,designation,gender)values(1,'London','En',1,'HR','Male');
insert into profile(id,address,batch,degree_id,designation,gender)values(2,'Chennai','For',2,'Manager','Female');
insert into profile(id,address,batch,degree_id,designation,gender)values(3,'Chennai','For',2,'Manager','Female');
insert into profile(id,address,batch,degree_id,designation,gender)values(4,'Chennai','For',2,'Manager','Female');
insert into profile(id,address,batch,degree_id,designation,gender)values(5,'London','En',1,'HR','Male');

insert into higher_degree(id,degree_name,university_name,profile_id)values(1,'BE','MIT',1);
insert into higher_degree(id,degree_name,university_name,profile_id)values(2,'BE','STANFORD',2);
insert into higher_degree(id,degree_name,university_name,profile_id)values(3,'BE','MIT',2);
insert into higher_degree(id,degree_name,university_name,profile_id)values(4,'BE','STANFORD',2);
insert into higher_degree(id,degree_name,university_name,profile_id)values(5,'BE','IIT',2);


insert into experience(id,company_name,currentvalue,enddate,startdate,profile_id)values(1,'CTS',1,TO_DATE('2008/11/11','YYYY/MM/DD'),TO_DATE('2019/11/11','YYYY/MM/DD'),2);
insert into experience(id,company_name,currentvalue,enddate,startdate,profile_id)values(2,'CTS',1,TO_DATE('2008/11/12','YYYY/MM/DD'),TO_DATE('2019/11/15','YYYY/MM/DD'),2);
insert into experience(id,company_name,currentvalue,enddate,startdate,profile_id)values(3,'CTS',1,TO_DATE('2008/11/16','YYYY/MM/DD'),TO_DATE('2019/11/17','YYYY/MM/DD'),2);
insert into experience(id,company_name,currentvalue,enddate,startdate,profile_id)values(4,'CTS',1,TO_DATE('2008/11/19','YYYY/MM/DD'),TO_DATE('2019/11/20','YYYY/MM/DD'),2);
insert into experience(id,company_name,currentvalue,enddate,startdate,profile_id)values(5,'CTS',1,TO_DATE('2008/11/20','YYYY/MM/DD'),TO_DATE('2019/11/22','YYYY/MM/DD'),2);


insert into project(id,name,number_of_members,profile_id,short_description)values(1,'Alumini management',10,1,'for school and college');
insert into project(id,name,number_of_members,profile_id,short_description)values(2,'Library management',11,2,'for school and college');
insert into project(id,name,number_of_members,profile_id,short_description)values(3,'Library management',11,2,'for school and college');
insert into project(id,name,number_of_members,profile_id,short_description)values(4,'Library management',11,2,'for school and college');
insert into project(id,name,number_of_members,profile_id,short_description)values(5,'Alumini management',10,1,'for school and college');


insert into user_new(id,emailid,name,password,phonenumber,profile_id,role_id,username)values(1,'abcd@efgh.com','abcd','efgh',9884642005,1,1,'abcdefgh');
insert into user_new(id,emailid,name,password,phonenumber,profile_id,role_id,username)values(2,'ijkl@mnop.com','ijkl','mnop',9845621745,2,2,'ijklmnop');
insert into user_new(id,emailid,name,password,phonenumber,profile_id,role_id,username)values(3,'nop@mnop.com','nop','mnop',9845621746,2,2,'bfhbvh');
insert into user_new(id,emailid,name,password,phonenumber,profile_id,role_id,username)values(4,'stu@mnop.com','stu','efgh',9845621747,2,2,'bfhe,s');
insert into user_new(id,emailid,name,password,phonenumber,profile_id,role_id,username)values(5,'xyz@mnop.com','xyz','mnop',9845621748,2,2,'hmkkyt');

insert into querytable(id,content,dateof,parent_id,user_id)values(1,'Alumini management',TO_DATE('2008/11/11','YYYY/MM/DD'),1,1);
insert into querytable(id,content,dateof,parent_id,user_id)values(2,'Library management',To_DATE('2008/11/19','YYYY/MM/DD'),2,2);
insert into querytable(id,content,dateof,parent_id,user_id)values(3,'Alumini management',To_DATE('2008/11/12','YYYY/MM/DD'),1,2);
insert into querytable(id,content,dateof,parent_id,user_id)values(4,'Library management',To_DATE('2008/11/13','YYYY/MM/DD'),2,2);
insert into querytable(id,content,dateof,parent_id,user_id)values(5,'Library management',To_DATE('2008/11/14','YYYY/MM/DD'),2,3);

 insert into event(id,dateof,descriptionValue,invitation,name,organiser_id)values(1,TO_DATE('2008/11/11','YYYY/MM/DD'),'Alumni meet','OBA','ProGrad',1);
 insert into event(id,dateof,descriptionValue,invitation,name,organiser_id)values(2,TO_DATE('2008/11/12','YYYY/MM/DD'),'Library opening','member','FACEPrep',2);
 insert into event(id,dateof,descriptionValue,invitation,name,organiser_id)values(3,TO_DATE('2008/11/13','YYYY/MM/DD'),'Library opening','member','FACEPrep',2);
 insert into event(id,dateof,descriptionValue,invitation,name,organiser_id)values(4,TO_DATE('2008/11/14','YYYY/MM/DD'),'Alumni meet','OBA','ProGrad',1);
 insert into event(id,dateof,descriptionValue,invitation,name,organiser_id)values(5,TO_DATE('2008/11/15','YYYY/MM/DD'),'Alumni meet','OBA','ProGrad',1);
