# Write your MySQL query statement below
SELECT t.id
FROM weather AS t
    INNER JOIN weather AS y ON DATE_ADD(y.recordDate,INTERVAL 1 DAY) = t.recordDate
WHERE t.temperature > y.temperature

