-- This UPDATE statement adds the account_number from the create_account.html page
UPDATE Persons
SET
  account_number = '{{payload.account_number}}',
  account_date = CURRENT_TIMESTAMP
WHERE
  email = '{{payload.email}}';


-- This UPDATE statement replaces the project status when the "Log Issue"
-- button is pressed on the project_check.html page
UPDATE Projects
SET
  status = 'ISSUE_IDENTIFIED'
WHERE
  id = '{{payload.project_id}}';


-- This UPDATE statement replaces the project status when the "Ready"
-- button is pressed on the project_check.html page
UPDATE Projects
SET
  status = 'READY'
WHERE
  id = '{{payload.project_id}}';


-- This UPDATE statement replaces the implementation infomration from the
-- project_correction.html page
UPDATE Projects
SET
  cloud_code = '{{payload.code}}',
  image_file = '{{payload.image_file}}',
  video_file = '{{payload.video_file}}',
  submission_date = CURRENT_TIMESTAMP()
WHERE
  id = '{{payload.project_id}}';


-- This UPDATE statement replaces the issue_text when the "Log Issue" button
-- is pressed on the project_check.html page for an existing issue.
UPDATE ProjectIssues
SET
  issue_text = '{{payload.issue_text}}',
  last_update = CURRENT_TIMESTAMP
WHERE
  project_id = '{{payload.project_id}}';
