--
-- Number of Creators matching an email address
SELECT COUNT(*)
FROM Persons
WHERE email = '{{payload.email}}'


--
-- Populate the review_list.html webpage table
SELECT
  Projects.id as project_id,
  Projects.title as title,
  Projects.keywords as keywords,
  Projects.category as category,
  (SELECT COUNT(*) FROM Reviews where Reviews.project_id = Projects.id) as num_reviews,
  {{payload.person_id}} as person_id
FROM Projects
WHERE Projects.status = 'READY'
  AND Projects.creator_id != {{payload.person_id}}
ORDER BY num_reviews ASC;


SELECT
  Projects.id as project_id,
  Projects.title as title,
  Projects.keywords as keywords,
  Projects.category as category,
  (SELECT COUNT(*) FROM Reviews where Reviews.project_id = Projects.id) as num_reviews,
  {{payload.person_id}} as person_id
FROM Projects
WHERE Projects.status = 'READY'
  AND Projects.creator_id != {{payload.person_id}}
ORDER BY num_reviews ASC;


--
-- Populate the project_check.html, project_correction.html, and review_details.html webpages
SELECT
  title,
  description,
  code,
  keywords,
  hw_links,
  image_file,
  video_file
FROM Projects
WHERE id = {{req.params.project_id}}

--
-- Populate the check.html, project_correction.html, and review_details.html webpages
SELECT
  id as project_id,
  title,
  description,
  code,
  keywords,
  hw_links,
  image_file,
  video_file
FROM Projects
WHERE status = 'NEW'

--
-- Populate the results.html webpage table
SELECT
  Projects.id as project_id,
  Projects.title as title,
  Projects.status as status,
  COUNT(Reviews.id) as num_reviews,
  Projects.category as category,
  AVG(Reviews.creativity) as avg_creativity,
  AVG(Reviews.completeness) as avg_completeness,
  AVG(Reviews.correctness) as avg_correctness,
  AVG(Reviews.readability) as avg_readability,
  AVG(Reviews.user_interface) as avg_user_interface
FROM Projects
JOIN Reviews ON Projects.id = Reviews.project_id
GROUP BY project_id;

SELECT COUNT(*)
FROM Persons
WHERE role = 'CREATOR';

SELECT COUNT(*)
FROM Projects;


--
-- Person contact infomration query to generate distribution list
SELECT
  first_name,
  last_name,
  email,
  title
FROM Persons
JOIN Projects on Persons.id = Projects.creator_id;
