create table stu_per(
    roll_no int,
    gender char(10),
    race char(20),
    parent_lvl_of_edu char(20),
    lunch char(20),
    test_prep_course char(20),
    math_score int,
    reading_score int,
    writing_score int,
    total int
)

copy stu_per(roll_no,
             gender,
              race,
              parent_lvl_of_edu,
              lunch,
              test_prep_course,
              math_score,
              reading_score,
              writing_score,
             total
             )
             from 'D:\E\SQL\Students Performance\StudentsPerformance.csv' delimiter ',' csv header;
select * from stu_per;
alter table stu_per add primary key(roll_no);
select roll_no from stu_per where gender='male' and roll_no between 20 and 30;
select * from stu_per where gender like 'm%';
select gender from stu_per where math_score>50 and reading_score>50 and writing_score>50 and gender='male';
select roll_no,math_score,reading_score,writing_score from stu_per;
SELECT *, (math_score+reading_score+writing_score) AS Total FROM stu_per;
alter table stu_per add total int;
select * from stu_per limit 8;
select count(roll_no) from stu_per where gender='female' or gender='male'; -- =1000
select count(roll_no) from stu_per where gender='female' and gender='male'; -- =0
select min(math_score) as min_math, min(reading_score) as min_read, min(writing_score) as min_write, min(total) as min_total from stu_per;
select min(reading_score) from stu_per;
select min(writing_score) from stu_per;
select min(total) from stu_per;