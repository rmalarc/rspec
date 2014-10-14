use training;


# There are employee and award tables. 
# Get all employees who get some award along with his/her latest award. 
# Only show latest award(s). 
# The answer must be in a script named ‘answer_to_award_question.sql’. 

select 
    e . *, a.name
from
    employee e
        inner join
    award a ON e.id = a.employee_id
        inner join
    (select 
        employee_id, max(award_date) as last_award_date
    from
        award
    group by employee_id) la ON la.employee_id = a.employee_id
        and la.last_award_Date = a.award_date;