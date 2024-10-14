-- What are the most in demand skills for data analysts?

SELECT
    skills,
    count(skills_job_dim.job_id) AS demand_count
FROM job_postings_fact
INNER JOIN skills_job_dim
ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim
ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE job_title_short = 'Data Analyst' AND
    job_work_from_home = TRUE
GROUP BY
    skills
ORDER BY
    demand_count DESC
LIMIT 5;

-- Here are the top 5 most in-demand skills for remote data analyst job postings:
-- Skill    Demand Count
-- SQL	    7291
-- Excel	4611
-- Python	4330
-- Tableau	3745
-- Power BI	2609

-- These insights suggest that SQL, Excel, Python 
-- Tableau, and Power BI are the most in-demand skills.
