
SELECT
    CASE
        WHEN job_work_from_home IS True THEN 'Remote'
        ELSE 'Non-remote'
    END AS type,
    AVG(salary_year_avg) AS average_salary,
    COUNT(job_id) AS offer_count
FROM job_postings_fact
WHERE salary_year_avg IS NOT NULL
AND job_work_from_home IS NOT NULL
GROUP BY CASE
            WHEN job_work_from_home IS True THEN 'Remote'
            ELSE 'Non-remote'
        END



