/*
    Question: What are the top paying Data Analyst jobs?
    - Identify the top 10 highest paying Data Analyst that are available remotely.
    - Focused on job postings with specified salaries (remove nulls).
    - Why? To understand the market demand and compensation for Data Analyst roles, especially in a remote work context.
*/

SELECT
    job_id,
    job_title,
    job_location,
    job_schedule_type,
    salary_year_avg,
    job_posted_date,
    name AS company_name
FROM
    job_postings_fact
LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
WHERE
    job_title_short = 'Data Analyst'
    AND job_location = 'Anywhere'
    AND salary_year_avg IS NOT NULL
ORDER BY    
    salary_year_avg DESC
LIMIT 10;