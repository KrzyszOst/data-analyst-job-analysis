SELECT
    s1.skills AS skill_1,
    s2.skills AS skill_2,
    COUNT(*) AS co_occurrence_count
FROM skills_job_dim sj1
JOIN skills_job_dim sj2 
    ON sj1.job_id = sj2.job_id
    AND sj1.skill_id < sj2.skill_id
JOIN skills_dim s1 ON sj1.skill_id = s1.skill_id
JOIN skills_dim s2 ON sj2.skill_id = s2.skill_id
GROUP BY s1.skills, s2.skills
ORDER BY co_occurrence_count DESC
LIMIT 10;