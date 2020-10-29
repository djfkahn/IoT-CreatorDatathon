CREATE TABLE Persons (
  id                INTEGER PRIMARY KEY,
  data_authorized   DATETIME DEFAULT CURRENT_TIMESTAMP,
  first_name        TEXT NOT NULL,
  last_name         TEXT NOT NULL,
  email             TEXT NOT NULL,
  registration_date DATETIME DEFAULT CURRENT_TIMESTAMP,
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
  keywords          TEXT NOT NULL,
  code              TEXT NOT NULL,
  hw_links          TEXT NOT NULL,
  image_file        TEXT,
  video_file        TEXT
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
