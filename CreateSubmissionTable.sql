CREATE TABLE Persons (
  id                INTEGER PRIMARY KEY,
  first_name        TEXT NOT NULL,
  last_name         TEXT NOT NULL,
  email             TEXT NOT NULL,
  email_confirmed   ENUM('NO','YES','NA'),
  registration_date DATETIME DEFAULT CURRENT_TIMESTAMP,
  paid              ENUM('NO','YES','NA'),
  account_date      DATETIME,
  account_number    INTEGER,
  role              ENUM('CREATOR','JUDGE','FACILITATOR')
);


CREATE TABLE Projects (
  id                INTEGER PRIMARY KEY,
  status            ENUM('NEW','ISSUE_IDENTIFIED','READY'),
  submission_date   DATETIME DEFAULT CURRENT_TIMESTAMP,
  creator_id        INTEGER NOT NULL,
  title             TEXT NOT NULL,
  description       TEXT NOT NULL,
  category          TEXT NOT NULL,
  keywords          TEXT,
  cloud_code        TEXT NOT NULL,
  local_code        TEXT,
  image_file        TEXT,
  video_file        TEXT,
  num_downloads     INTEGER  DEFAULT 0
);


CREATE TABLE Reviews (
  id                INTEGER PRIMARY KEY,
  reviewer_id       INTEGER NOT NULL,
  project_id        INTEGER NOT NULL,
  review_date       DATETIME DEFAULT CURRENT_TIMESTAMP,
  creativity        INTEGER  DEFAULT 0,
  completeness      INTEGER  DEFAULT 0,
  correctness       INTEGER  DEFAULT 0,
  readability       INTEGER  DEFAULT 0,
  user_interface    INTEGER  DEFAULT 0
);


CREATE TABLE ProjectIssues (
  id                INTEGER PRIMARY KEY,
  project_id        INTEGER NOT NULL,
  person_id         INTEGER NOT NULL,
  issue_text        TEXT,
  date_created      DATETIME DEFAULT CURRENT_TIMESTAMP,
  last_updated      DATETIME DEFAULT CURRENT_TIMESTAMP
);
