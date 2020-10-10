select * 
from role join user_new 
on role.id=user_new.role_id 
order by role.name,user_new.name;

select * from user_new join role
on role.id=user_new.role_id 
order by role.name,user_new.name;


select user_new.phonenumber,user_new.emailid,profile.batch,department.name,profile.designation,experience.company_name
from user_new 
join profile on profile.id=user_new.id
join degree on profile.degree_id=degree.id
join department on degree.department_id=department.id
join experience on profile.id=experience.profile_id
and user_new.name='abcdefgh' and experience.currentValue=3;

select user_new.name,skill.name
from user_new 
join role on user_new.role_id=role.id
join profile on user_new.profile_id=profile.id
join skill on skill.id=profile.id
where role.name='Alumini'
order by user_new.name,skill.name;


select user_new.name,experience.company_name
from user_new 
join role on user_new.role_id=role.id
join profile on user_new.profile_id=profile.id
join experience on experience.id=user_new.id
where role.name='Alumini'
order by user_new.name,experience.company_name;


select user_new.name,experience.company_name
from user_new 
join role on user_new.role_id=role.id
join profile on user_new.profile_id=profile.id
join experience on experience.id=user_new.id
where role.name='Alumini' and experience.currentValue=1
order by user_new.name;


select user_new.name,experience.company_name
from user_new 
join role on user_new.role_id=role.id
join profile on user_new.profile_id=profile.id
join experience on experience.id=user_new.id
where role.name='Alumini' and experience.currentValue=1 and profile.batch='2008'
order by user_new.name;

select user_new.name,user_new.emailid,user_new.phonenumber,profile.address
from user_new 
join role on user_new.role_id=role.id
join profile on user_new.profile_id=profile.id
where role.name='Alumini' and profile.id is not null
order by user_new.name;

select user_new.name,user_new.emailid,user_new.phonenumber,profile.address
from user_new 
join role on user_new.role_id=role.id
join profile on user_new.profile_id=profile.id
where role.name='Alumini' and profile.batch='2008'
order by user_new.name;

select user_new.name,user_new.emailid,user_new.phonenumber,profile.address
from user_new 
join role on user_new.role_id=role.id
join profile on user_new.profile_id=profile.id
join degree on degree.id=user_new.id
where role.name='Alumini' and degree.name='BSC_CT'
order by user_new.name;


select user_new.name,user_new.emailid,user_new.phonenumber,profile.address
from user_new 
join role on user_new.role_id=role.id
join profile on user_new.profile_id=profile.id
join higher_degree on higher_degree.id=user_new.id
join department on user_new.id=department.id
where role.name='Alumini' and department.name='CSE'
order by user_new.name


select user_new.name,degree.university_name
from user_new
join role on user_new.role_id=role.id
join profile on profile.id=user_new.profile_id
join higher_degree on higher_degree.id=user_new.id
join department on department.id=user_new.id
where role.name='Alumni' and higher_degree.degree_name is not null
order by user_new.name,higher_degree.university_name;

select user_new.name, higher_degree.university_name from user_new
join role on user_new.role_id = role.id
join profile on user_new.profile_id = profile.id
join higher_degree on user_new.id = higher_degree.id
join department on user_new.id = department.id
where role.name='Alumni' and higher_degree.degree_name is not null
order by user_new.name,higher_degree.university_name;

select user_new.name, user_new.emailid, user_new.phonenumber, profile.address from user_new
join role on user_new.role_id = role.id
join profile on user_new.profile_id = profile.id
join degree on user_new.id = degree.id
join higher_degree on user_new.id = higher_degree.id
join department on user_new.id = department.id
where role.name='Alumni' and higher_degree.university_name='Texas University'
order by user_new.name;

select user_new.name, profile.batch from user_new
join role on user_new.role_id = role.id
join profile on user_new.profile_id = profile.id
where role.name='Alumni' and profile.gender='female'
order by user_new.name;

select user_new.name, profile.batch,degree.name from user_new
join role on user_new.role_id = role.id
join profile on user_new.profile_id = profile.id
join degree on user_new.id = degree.id
where role.name='Alumni' and profile.gender='female'
order by user_new.name;


select user_new.name, profile.batch,degree.name,department.name from user_new
join role on user_new.role_id = role.id
join profile on user_new.profile_id = profile.id
join degree on user_new.id = degree.id
join department on user_new.id= department.id
where role.name='Alumni' and profile.gender='female'
order by user_new.name;


select degree.name, department.name from degree
 join department on degree.department_id= department.id
order by degree.name;

select user_new.name, profile.designation from user_new
 join role on user_new.role_id = role.id
 join profile on user_new.profile_id = profile.id
where role.name='Alumni' and profile.gender='male'
order by user_new.name;

select user_new.name, profile.designation from user_new
join role on user_new.role_id = role.id
join profile on user_new.profile_id = profile.id
join experience on user_new.id = experience.id
where role.name='Alumni' and experience.currentValue=1 and experience.company_name='TCS'
order by user_new.name;


select user_new.name, querytable.content from user_new
 join querytable on user_new.role_id = querytable.id
order by user_new.name;


select user_new.name, querytable.content from user_new
 join querytable on user_new.role_id = querytable.id
where querytable.parent_id is not null
order by user_new.name;


select user_new.name, post.content from user_new
join post on user_new.role_id = post.id
order by user_new.name;


select user_new.name, post.content from user_new
 join post on user_new.role_id = post.id
 join post_type on post.type_id = post_type.id
where  post_type.name='Technology'
order by user_new.name,post.dateof;


select user_new.name, post.content from user_new
join post on user_new.role_id = post.id
join post_type on post.type_id = post_type.id
where post.dateof='2013'
order by user_new.name,post.dateof,post.content;

select user_new.name, department.name from user_new
join role on user_new.role_id = role.id
join profile on user_new.profile_id = profile.id
join degree on user_new.id = degree.id
join department on user_new.id= department.id
join profile_skills on user_new.profile_id = profile_skills.profile_id
join skills on profile_skills.skill_id = skills.id
where skills.name='Programming'
order by user_new.name;

select user_new.name, events.name from user_new
 join events on user_new.id = events.id
join role on user_new.role_id = role.id
where role.name='Alumni'
order by user_new.name,events.dateof,events.name desc;



select user_new.name, events.name from user_new
join events on user_new.id = events.id
join role on user_new.role_id = role.id
where role.name='Alumni'
order by user_new.name,events.dateof;