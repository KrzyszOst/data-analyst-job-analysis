SELECT
    skills,
    AVG(salary_year_avg) AS Average_salary_per_skill,
    COUNT(job_postings_fact.job_id)
FROM job_postings_fact
JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE salary_year_avg IS NOT NULL
GROUP BY skills
HAVING COUNT(job_postings_fact.job_id) >= 20
ORDER BY Average_salary_per_skill DESC
LIMIT 10