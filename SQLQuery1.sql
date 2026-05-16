create Database Data_Summer_Camp_3
use Data_Summer_Camp_3
------------------------
create table trainee(Trainees_id int not null primary key,
        fullname varchar(100) not null,
        brithdate date not null)
------------------------
create table lectures(lec_id int primary key,
        fullname varchar(30) not null,
        specility varchar(100) not null,
        phone varchar(30) not null)
------------------------
alter table lectures add sales int
alter table  lectures add sales tinyint 
alter table lectures alter column sales int not null
alter table lectures drop column sales

------------------------
insert into [dbo].[lectures]
values(1,'aymen','excel','012589')


insert into [dbo].[lectures]
values(2,'Alaa','power bi','0125896')

insert into [dbo].[lectures]
values(3,'mohmmed','sql','0125896'),(4,'mostafa','python','12458963')

select * from [dbo].[lectures]

------------------------
create table course(
                     course_id int primary key identity(1,1),
                     coursename varchar(20) null,
                     lecture_id int foreign key references lectures(lec_id) ,
                     )
------------------------
alter table course add Hours int
alter table course drop column Hours
------------------------
create table trainees_courses(
         trainees_id int foreign key references trainee(trainees_id) ,
         courses_id int foreign key references course(course_id),
         primary key( trainees_id ,courses_id),
         )
         select * from trainee
         select * from lectures
         select * from course
         select * from trainees_courses
------------------------
update trainee
set fullname='Ahmed'
where Trainees_id=1
update trainee
set fullname='mona'
where Trainees_id=2
------------------------
delete from trainee
where Trainees_id=5
------------------------
delete from trainee
where Trainees_id=4
  ------------------------       
-------DQL
select l.fullname
from lectures l
select  l.lec_id,l.fullname
from lectures l
select l.lec_id ,l.fullname,l.specility,l.phone
from lectures l
select  concat(l.lec_id,'_',l.fullname) as ID_Name
from lectures l
select l.fullname +'_'+ l.specility
from lectures l
------------------------   
select concat(t.Trainees_id,'-',t.fullname,'-',t.brithdate)as trainees_info
from trainee t
select l.fullname
from lectures l
where specility='power bi'
select * from trainee
select * from lectures
select * from course
select * from trainees_courses
select t.fullname
from trainee t
where brithdate='2005-1-1'
select concat(l.lec_id,'_',l.fullname,'_',l.phone) as info
from [dbo].[lectures] l
where l.specility='excel'or l.specility='python' or l.specility='specility='

select c.course_id
from course c
where c.lecture_id=4 and c.coursename='python'

select l.lec_id, l.fullname
from [dbo].[lectures] l
where l.fullname like 'a%'
select t.fullname
from [dbo].[trainee] t
where right(t.fullname,1)='a'