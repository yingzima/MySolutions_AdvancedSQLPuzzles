--Puzzle #1
SELECT a.item as 'Item Cart 1', b.item as 'Item Cart 2'
FROM cart1 a
FULL OUTER JOIN cart2 b ON a.item = b.item;

--Puzzle #2
WITH recursive_cte AS (
SELECT employee_id, manager_id, job_title, 0 AS depth
FROM employee
WHERE manager_id IS NULL
UNION ALL
SELECT c.employee_id, c.manager_id, c.job_title, c.depth + 1 AS depth
FROM recursive_cte c
JOIN employee e ON c.employee_id = e.manager_id
)
SELECT *
FROM recursive_cte; 

--Puzzle #3
