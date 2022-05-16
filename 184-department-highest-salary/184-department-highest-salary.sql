# Write your MySQL query statement below
# from subquery


select d.name Department, e.name Employee, salary Salary
from employee e
    inner join (select departmentid, MAX(salary) max_salary
    from employee
    group by departmentid) dh on e.departmentid = dh.departmentid
                             and e.salary = dh.max_salary
    inner join department d on d.id = e.departmentid
    

    
# {"headers": ["departmentid", "MAX(salary)"], 
# "values": [[1, 90000], [2, 80000]]}

# {"headers": ["id", "name", "salary", "departmentId", "departmentid", "max_salary", "id", "name"], 
# "values": [[2, "Jim", 90000, 1, 1, 90000, 1, "IT"], 
#            [3, "Henry", 80000, 2, 2, 80000, 2, "Sales"], 
#            [5, "Max", 90000, 1, 1, 90000, 1, "IT"]]}