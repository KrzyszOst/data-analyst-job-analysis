/* Answer: What are the top skills based on salary?
- Look at the average salary associated with each skill for Data Analyst positions
- Focuses on roles with specified salaries, regardless of location
- Why? iT revelas how different skills impact salary leves for Data Analysts and helps identify the most financially rewarding skills to acquire or imporve
*/
SELECT
    skills_dim.skills,
    ROUND(AVG(salary_year_avg),2) AS average_salary
FROM job_postings_fact
INNER JOIN skills_job_dim ON skills_job_dim.job_id = job_postings_fact.job_id
INNER JOIN skills_dim ON skills_dim.skill_id = skills_job_dim.skill_id
WHERE 
    job_postings_fact.job_title_short = 'Data Analyst' AND
    salary_year_avg > 0 
GROUP BY skills
ORDER BY average_salary DESC

/*
[
  {
    "skills": "svn",
    "average_salary": "400000.00"
  },
  {
    "skills": "solidity",
    "average_salary": "179000.00"
  },
  {
    "skills": "couchbase",
    "average_salary": "160515.00"
  },
  {
    "skills": "datarobot",
    "average_salary": "155485.50"
  },
  {
    "skills": "golang",
    "average_salary": "155000.00"
  },
  {
    "skills": "mxnet",
    "average_salary": "149000.00"
  },
  {
    "skills": "dplyr",
    "average_salary": "147633.33"
  },
  {
    "skills": "vmware",
    "average_salary": "147500.00"
  },
  {
    "skills": "terraform",
    "average_salary": "146733.83"
  },
  {
    "skills": "twilio",
    "average_salary": "138500.00"
  },
  {
    "skills": "gitlab",
    "average_salary": "134126.00"
  },
  {
    "skills": "kafka",
    "average_salary": "129999.16"
  },
  {
    "skills": "puppet",
    "average_salary": "129820.00"
  },
  {
    "skills": "keras",
    "average_salary": "127013.33"
  },
  {
    "skills": "pytorch",
    "average_salary": "125226.20"
  },
  {
    "skills": "perl",
    "average_salary": "124685.75"
  },
  {
    "skills": "ansible",
    "average_salary": "124370.00"
  },
  {
    "skills": "hugging face",
    "average_salary": "123950.00"
  },
  {
    "skills": "tensorflow",
    "average_salary": "120646.83"
  },
  {
    "skills": "cassandra",
    "average_salary": "118406.68"
  },
  {
    "skills": "notion",
    "average_salary": "118091.67"
  },
  {
    "skills": "atlassian",
    "average_salary": "117965.60"
  },
  {
    "skills": "bitbucket",
    "average_salary": "116711.75"
  },
  {
    "skills": "airflow",
    "average_salary": "116387.26"
  },
  {
    "skills": "scala",
    "average_salary": "115479.53"
  },
  {
    "skills": "linux",
    "average_salary": "114883.20"
  },
  {
    "skills": "confluence",
    "average_salary": "114153.12"
  },
  {
    "skills": "pyspark",
    "average_salary": "114057.87"
  },
  {
    "skills": "mongodb",
    "average_salary": "113607.71"
  },
  {
    "skills": "aurora",
    "average_salary": "113393.90"
  },
  {
    "skills": "cordova",
    "average_salary": "113269.50"
  },
  {
    "skills": "gcp",
    "average_salary": "113065.48"
  },
  {
    "skills": "spark",
    "average_salary": "113001.94"
  },
  {
    "skills": "splunk",
    "average_salary": "112927.60"
  },
  {
    "skills": "databricks",
    "average_salary": "112880.74"
  },
  {
    "skills": "unify",
    "average_salary": "112317.44"
  },
  {
    "skills": "git",
    "average_salary": "112249.64"
  },
  {
    "skills": "dynamodb",
    "average_salary": "111840.00"
  },
  {
    "skills": "snowflake",
    "average_salary": "111577.72"
  },
  {
    "skills": "shell",
    "average_salary": "111496.45"
  },
  {
    "skills": "electron",
    "average_salary": "111175.00"
  },
  {
    "skills": "unix",
    "average_salary": "111123.32"
  },
  {
    "skills": "hadoop",
    "average_salary": "110888.27"
  },
  {
    "skills": "pandas",
    "average_salary": "110767.07"
  },
  {
    "skills": "node.js",
    "average_salary": "110230.38"
  },
  {
    "skills": "phoenix",
    "average_salary": "109259.09"
  },
  {
    "skills": "php",
    "average_salary": "109051.51"
  },
  {
    "skills": "neo4j",
    "average_salary": "108646.42"
  },
  {
    "skills": "nosql",
    "average_salary": "108331.04"
  },
  {
    "skills": "express",
    "average_salary": "108221.35"
  },
  {
    "skills": "watson",
    "average_salary": "108103.00"
  },
  {
    "skills": "redshift",
    "average_salary": "107968.80"
  },
  {
    "skills": "jira",
    "average_salary": "107931.30"
  },
  {
    "skills": "rust",
    "average_salary": "107925.00"
  },
  {
    "skills": "elasticsearch",
    "average_salary": "107815.75"
  },
  {
    "skills": "no-sql",
    "average_salary": "107405.33"
  },
  {
    "skills": "numpy",
    "average_salary": "107397.56"
  },
  {
    "skills": "db2",
    "average_salary": "107130.29"
  },
  {
    "skills": "swift",
    "average_salary": "107100.00"
  },
  {
    "skills": "redis",
    "average_salary": "107043.75"
  },
  {
    "skills": "postgresql",
    "average_salary": "106852.94"
  },
  {
    "skills": "plotly",
    "average_salary": "106602.86"
  },
  {
    "skills": "aws",
    "average_salary": "106439.84"
  },
  {
    "skills": "c++",
    "average_salary": "105695.51"
  },
  {
    "skills": "alteryx",
    "average_salary": "105579.57"
  },
  {
    "skills": "azure",
    "average_salary": "105399.62"
  },
  {
    "skills": "gdpr",
    "average_salary": "105328.92"
  },
  {
    "skills": "bigquery",
    "average_salary": "105237.60"
  },
  {
    "skills": "bash",
    "average_salary": "105074.72"
  },
  {
    "skills": "powershell",
    "average_salary": "105040.78"
  },
  {
    "skills": "mongo",
    "average_salary": "104274.25"
  },
  {
    "skills": "scikit-learn",
    "average_salary": "103932.15"
  },
  {
    "skills": "looker",
    "average_salary": "103855.35"
  },
  {
    "skills": "jupyter",
    "average_salary": "103522.46"
  },
  {
    "skills": "ibm cloud",
    "average_salary": "103312.50"
  },
  {
    "skills": "kubernetes",
    "average_salary": "103088.79"
  },
  {
    "skills": "angular",
    "average_salary": "102103.25"
  },
  {
    "skills": "flask",
    "average_salary": "101862.69"
  },
  {
    "skills": "asp.net",
    "average_salary": "101666.67"
  },
  {
    "skills": "sqlite",
    "average_salary": "101625.00"
  },
  {
    "skills": "python",
    "average_salary": "101511.85"
  },
  {
    "skills": "github",
    "average_salary": "101498.36"
  },
  {
    "skills": "jenkins",
    "average_salary": "101418.62"
  },
  {
    "skills": "mysql",
    "average_salary": "101381.40"
  },
  {
    "skills": "visio",
    "average_salary": "101035.82"
  },
  {
    "skills": "oracle",
    "average_salary": "100964.19"
  },
  {
    "skills": "qlik",
    "average_salary": "100932.78"
  },
  {
    "skills": "java",
    "average_salary": "100213.87"
  },
  {
    "skills": "chainer",
    "average_salary": "100000.00"
  },
  {
    "skills": "theano",
    "average_salary": "100000.00"
  },
  {
    "skills": "matlab",
    "average_salary": "99908.55"
  },
  {
    "skills": "unity",
    "average_salary": "99616.70"
  },
  {
    "skills": "dax",
    "average_salary": "99548.74"
  },
  {
    "skills": "ggplot2",
    "average_salary": "99415.75"
  },
  {
    "skills": "matplotlib",
    "average_salary": "99307.10"
  },
  {
    "skills": "docker",
    "average_salary": "99261.57"
  },
  {
    "skills": "yarn",
    "average_salary": "99150.00"
  },
  {
    "skills": "seaborn",
    "average_salary": "98747.83"
  },
  {
    "skills": "c",
    "average_salary": "98714.56"
  },
  {
    "skills": "r",
    "average_salary": "98707.80"
  },
  {
    "skills": "django",
    "average_salary": "98543.69"
  },
  {
    "skills": "flow",
    "average_salary": "98019.82"
  },
  {
    "skills": "tableau",
    "average_salary": "97978.08"
  },
  {
    "skills": "node",
    "average_salary": "97900.00"
  },
  {
    "skills": "spring",
    "average_salary": "97453.61"
  },
  {
    "skills": "go",
    "average_salary": "97266.97"
  },
  {
    "skills": "c#",
    "average_salary": "97247.74"
  },
  {
    "skills": "ssis",
    "average_salary": "97234.75"
  },
  {
    "skills": "sql",
    "average_salary": "96435.33"
  },
  {
    "skills": "sql server",
    "average_salary": "96191.42"
  },
  {
    "skills": "mariadb",
    "average_salary": "96000.00"
  },
  {
    "skills": "jquery",
    "average_salary": "95772.00"
  },
  {
    "skills": "t-sql",
    "average_salary": "95722.65"
  },
  {
    "skills": "microstrategy",
    "average_salary": "94485.56"
  },
  {
    "skills": "vba",
    "average_salary": "93844.97"
  },
  {
    "skills": "sas",
    "average_salary": "93707.36"
  },
  {
    "skills": "webex",
    "average_salary": "92500.00"
  },
  {
    "skills": "sap",
    "average_salary": "92446.21"
  },
  {
    "skills": "power bi",
    "average_salary": "92323.60"
  },
  {
    "skills": "pascal",
    "average_salary": "92000.00"
  },
  {
    "skills": "javascript",
    "average_salary": "91805.12"
  },
  {
    "skills": "ssrs",
    "average_salary": "91536.86"
  },
  {
    "skills": "cognos",
    "average_salary": "90407.22"
  },
  {
    "skills": "airtable",
    "average_salary": "90006.25"
  },
  {
    "skills": "clickup",
    "average_salary": "90000.00"
  },
  {
    "skills": "zoom",
    "average_salary": "89791.42"
  },
  {
    "skills": "typescript",
    "average_salary": "89323.10"
  },
  {
    "skills": "unreal",
    "average_salary": "89112.50"
  },
  {
    "skills": "sharepoint",
    "average_salary": "89027.16"
  },
  {
    "skills": "react",
    "average_salary": "88567.19"
  },
  {
    "skills": "drupal",
    "average_salary": "88328.20"
  },
  {
    "skills": "powerpoint",
    "average_salary": "88315.61"
  },
  {
    "skills": "firebase",
    "average_salary": "87500.00"
  },
  {
    "skills": "crystal",
    "average_salary": "87327.33"
  },
  {
    "skills": "visual basic",
    "average_salary": "86972.33"
  },
  {
    "skills": "arch",
    "average_salary": "86835.00"
  },
  {
    "skills": "windows",
    "average_salary": "86512.83"
  },
  {
    "skills": "excel",
    "average_salary": "86418.90"
  },
  {
    "skills": "symphony",
    "average_salary": "86266.67"
  },
  {
    "skills": "microsoft teams",
    "average_salary": "85570.03"
  },
  {
    "skills": "assembly",
    "average_salary": "85389.70"
  },
  {
    "skills": "asana",
    "average_salary": "85338.70"
  },
  {
    "skills": "css",
    "average_salary": "85317.07"
  },
  {
    "skills": "spss",
    "average_salary": "85292.80"
  },
  {
    "skills": "ms access",
    "average_salary": "84872.71"
  },
  {
    "skills": "cobol",
    "average_salary": "84744.75"
  },
  {
    "skills": "html",
    "average_salary": "84382.71"
  },
  {
    "skills": "sheets",
    "average_salary": "84129.61"
  },
  {
    "skills": "terminal",
    "average_salary": "83567.30"
  },
  {
    "skills": "slack",
    "average_salary": "83441.95"
  },
  {
    "skills": "word",
    "average_salary": "82940.76"
  },
  {
    "skills": "chef",
    "average_salary": "82825.00"
  },
  {
    "skills": "selenium",
    "average_salary": "82500.00"
  },
  {
    "skills": "fortran",
    "average_salary": "82500.00"
  },
  {
    "skills": "ruby",
    "average_salary": "80960.17"
  },
  {
    "skills": "outlook",
    "average_salary": "80680.33"
  },
  {
    "skills": "monday.com",
    "average_salary": "79000.00"
  },
  {
    "skills": "spreadsheet",
    "average_salary": "78465.89"
  },
  {
    "skills": "planner",
    "average_salary": "77039.12"
  },
  {
    "skills": "workfront",
    "average_salary": "76820.04"
  },
  {
    "skills": "wrike",
    "average_salary": "75000.00"
  },
  {
    "skills": "julia",
    "average_salary": "73680.00"
  },
  {
    "skills": "npm",
    "average_salary": "73418.75"
  },
  {
    "skills": "dart",
    "average_salary": "72673.83"
  },
  {
    "skills": "erlang",
    "average_salary": "72500.00"
  },
  {
    "skills": "smartsheet",
    "average_salary": "71221.46"
  },
  {
    "skills": "tidyverse",
    "average_salary": "70599.93"
  },
  {
    "skills": "vb.net",
    "average_salary": "69600.00"
  },
  {
    "skills": "wire",
    "average_salary": "68375.00"
  },
  {
    "skills": "opencv",
    "average_salary": "67818.00"
  },
  {
    "skills": "sass",
    "average_salary": "67698.50"
  },
  {
    "skills": "colocation",
    "average_salary": "67500.00"
  },
  {
    "skills": "trello",
    "average_salary": "65193.46"
  },
  {
    "skills": "vue",
    "average_salary": "65000.00"
  },
  {
    "skills": "macos",
    "average_salary": "57933.18"
  },
  {
    "skills": "graphql",
    "average_salary": "57009.33"
  },
  {
    "skills": "ruby on rails",
    "average_salary": "51059.00"
  }
]
*/
