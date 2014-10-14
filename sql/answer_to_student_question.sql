use training;

# a) Get all student not taking 'Physics' class. 
select *
from student
where id not in (SELECT student_id FROM training.registration where class_id = 3);


# b) Find out who takes most classes

create temporary table sc
SELECT 
    student_id, count(*) classes
FROM
    training.registration
group by student_id;

SET @max_classes = (select 
            max(classes)
        from
            sc);

select 
    *
from
    student s
        inner join
    sc ON sc.student_id = s.id
        and sc.classes = @max_classes;


# c) Find out which student doesn't take any class.

select 
    *
from
    student s
where
    s.id not in (Select 
            student_id
        from
            sc);

