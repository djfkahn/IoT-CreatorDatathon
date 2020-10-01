SELECT
  rowid as ID,
  category as Category,
  user_level as User_Level,
  descriptive_title as Descriptive_Title,
  description as Description,
  creativity as Creativity,
  completeness as Completeness,
  readability as Readability,
  user_interface as UI,
  keywords as Keywords,
  timestamp as Timestamp
FROM Submission LIMIT 10 OFFSET  {{payload}};;


SELECT
  rowid,
  student_name as Name,
  creativity,
  completeness,
  correctness,
  readability,
  user_interface,
  image_file_path,
  code,
  keywords,
  descriptive_title,
  description as detail_description,
  download_count
FROM Submission
WHERE rowid = {{req.params.rowid}}

SELECT
  rowid,
  student_name,
  creativity,
  completeness,
  correctness,
  readability,
  user_interface,
  image_file_path,
  code,
  descriptive_title,
  description as detail_description,
  download_count
FROM Submission
WHERE rowid = {{req.params.rowid}}
