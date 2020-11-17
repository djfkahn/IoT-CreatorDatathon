-- This INSERT statement creates a new Person from the resgister.html page
INSERT INTO Persons (
  first_name,
  last_name,
  email,
  role
) VALUES (
  '{{payload.first_name}}',
  '{{payload.last_name}}',
  '{{payload.email}}',
  'CREATOR'
);

-- This INSERT statement creates a new Person from the create_judge.html page
INSERT INTO Persons (
  first_name,
  last_name,
  email,
  account_number,
  account_date,
  role
) VALUES (
  '{{payload.first_name}}',
  '{{payload.last_name}}',
  '{{payload.email}}',
  '{{payload.account_number}}',
  CURRENT_TIMESTAMP(),
  '{{payload.role}}'
);

-- This INSERT statement creates a new Project from the submit_code.html page
INSERT INTO Projects (
  status,
  creator_id,
  title,
  description,
  category,
  keywords,
  code,
  hw_links,
  image_file,
  video_file
) VALUES (
  '{{payload.status}}',
  '{{payload.creator_id}}',
  '{{payload.title}}',
  '{{payload.description}}',
  '{{payload.category}}',
  '{{payload.keywords}}',
  '{{payload.code}}',
  '{{payload.hw_links}}',
  '{{payload.image_file}}',
  '{{payload.video_file}}'
);

-- This INSERT statement creates a new Review from the review_details.html page
INSERT INTO Reviews (
  reviewer_id,
  project_id,
  creativity,
  completeness,
  correctness,
  readability,
  user_interface
) VALUES (
  '{{payload.reviewer_id}}',
  '{{payload.project_id}}',
  '{{payload.creativity}}',
  '{{payload.completeness}}',
  '{{payload.correctness}}',
  '{{payload.readability}}',
  '{{payload.user_interface}}'
);

-- This INSERT statement creates a new project issue from project_check.html page
-- when the "Log Issue" button is pressed.
INSERT INTO ProjectIssues (
  project_id,
  person_id,
  issue_text,
) VALUES (
  '{{payload.project_id}}',
  '{{payload.person_id}}',
  '{{payload.issue_text}}',
);
