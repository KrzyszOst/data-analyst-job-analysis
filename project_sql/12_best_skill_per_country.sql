SELECT
    skills,
    job_country,
    AVG(salary_year_avg)
FROM job_postings_fact
JOIN skills_job_dim ON skills_job_dim.job_id = job_postings_fact.job_id
JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE salary_year_avg IS NOT NULL
GROUP BY job_country, skills
