SELECT
    job_postings_fact.job_id,
    job_title,
    COUNT(*) AS skill_count
FROM job_postings_fact
JOIN skills_job_dim ON skills_job_dim.job_id = job_postings_fact.job_id
GROUP BY job_postings_fact.job_id
ORDER BY skill_count DESC
LIMIT 10