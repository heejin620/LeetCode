# Write your MySQL query statement below
SELECT e.name AS Employee
FROM employee AS e
    INNER JOIN employee AS b ON b.id = e.managerid
WHERE e.salary > b.salary



# ["id", "name", "salary", "managerId", "id", "name", "salary", "managerId"]
# [1, "Joe", 70000, 3, 3, "Sam", 60000, null]
# [2, "Henry", 80000, 4, 4, "Max", 90000, null]
# [3, "Sam", 60000, null, null, null, null, null]
# [4, "Max", 90000, null, null, null, null, null]]}

# ["id", "name", "salary", "managerId", "id", "name", "salary", "managerId"], 
# [1, "Joe", 70000, 3, 3, "Sam", 60000, null], 
# [2, "Henry", 80000, 4, 4, "Max", 90000, null]]}