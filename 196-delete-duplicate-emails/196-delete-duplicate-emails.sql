# Write your MySQL query statement below




# DELETE
# FROM person
# WHERE id IN(
# SELECT sub.id
# FROM (
#  SELECT id, COUNT(email)
# FROM person
# GROUP BY id, email
# HAVING COUNT(email) > 1
# ORDER BY id DESC
# LIMIT 1) sub)

DELETE p1
FROM person p1
    INNER JOIN person p2 ON p1.email = p2.email
WHERE p1.id > p2.id




# {"headers": ["id", "email"],
# "values": [[1, "john@example.com"], 
#            [2, "bob@example.com"], 
#            [3, "john@example.com"]]}