/*
Answer: What are the most optimal skills to learn (aka it's in high demand and a high-paying skill)?
- Identify skills in high demand and ssociated with high average salaries for Data Analyst roles
- Concentrates on remote positions with specified salaries
- Why? Targets skills that offer job secruity (high demand) and financial benefits (high salaries).
    offering strategic inshight for career development in data analysis
*/

 WITH skill_demand_count AS (
    SELECT
        skills_dim.skill_id,
        COUNT(*) AS skill_count,
        skills_dim.skills
    FROM job_postings_fact
    INNER JOIN skills_job_dim ON skills_job_dim.job_id = job_postings_fact.job_id
    INNER JOIN skills_dim ON skills_dim.skill_id = skills_job_dim.skill_id
    WHERE 
        job_postings_fact.job_title_short = 'Data Analyst'
        AND salary_year_avg > 0 
        AND job_work_from_home = TRUE
    GROUP BY skills_dim.skill_id
), top_average_salary AS (
    SELECT
        skills_dim.skill_id,
        skills_dim.skills,
        ROUND(AVG(salary_year_avg),2) AS average_salary
    FROM job_postings_fact
    INNER JOIN skills_job_dim ON skills_job_dim.job_id = job_postings_fact.job_id
    INNER JOIN skills_dim ON skills_dim.skill_id = skills_job_dim.skill_id
    WHERE 
        job_postings_fact.job_title_short = 'Data Analyst' AND
        salary_year_avg > 0 AND
        job_work_from_home = TRUE
    GROUP BY skills_dim.skill_id
)


SELECT
    skill_demand_count.skill_id,
    skill_demand_count.skills,
    skill_count,
    average_salary
FROM 
    skill_demand_count
INNER JOIN top_average_salary ON top_average_salary.skill_id = skill_demand_count.skill_id
WHERE skill_count > 10
ORDER BY 
    average_salary DESC,
    skill_count DESC
LIMIT 25
