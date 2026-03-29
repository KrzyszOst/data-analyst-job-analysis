SELECT
    MAX(salary_year_avg) AS max_salary_per_skill,
    MIN(salary_year_avg) AS min_salary_per_skill,
    AVG(salary_year_avg) AS average_salary_per_skill,
    skills
FROM job_postings_fact
JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
JOIN skills_dim ON skills_dim.skill_id = skills_job_dim.skill_id
WHERE salary_year_avg IS NOT NULL AND skills IS NOT NULL
GROUP BY skills
HAVING COUNT(job_postings_fact.job_id) > 30