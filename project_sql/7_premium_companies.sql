WITH global_avg AS (
    SELECT AVG(salary_year_avg) AS avg_salary
    FROM job_postings_fact
    WHERE salary_year_avg IS NOT NULL
)
SELECT
    name AS company_name,
    AVG(salary_year_avg) AS average_salary,
    COUNT(job_postings_fact.job_id) AS job_count
FROM job_postings_fact
JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
CROSS JOIN global_avg
WHERE salary_year_avg IS NOT NULL
GROUP BY company_name
HAVING  COUNT(job_postings_fact.job_id) > 50 
AND AVG(salary_year_avg) > MAX(avg_salary)
ORDER BY average_salary DESC