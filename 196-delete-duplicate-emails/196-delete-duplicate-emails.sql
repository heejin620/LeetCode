# Write your MySQL query statement below



DELETE
FROM person
WHERE id NOT IN(
SELECT sub.min_id
FROM (SELECT email, MIN(id) AS min_id
FROM person
GROUP BY email) sub)




# {"headers": ["id", "email"],
# "values": [[1, "john@example.com"], 
#            [2, "bob@example.com"], 
#            [3, "john@example.com"]]}