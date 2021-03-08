--импортируем данные по баллам (подготовлены заранее, без null)
COPY aug.city (
  city,
  city_development_index,
  grade1
)
FROM LOCAL 'GitHub//DWH-Vertica//data//grades//city.csv' DELIMITER ';' DIRECT ABORT ON ERROR;

COPY aug.company_size (
  company_size,
  grade2
)
FROM LOCAL 'GitHub//DWH-Vertica//data//grades//company_size.csv' DELIMITER ';' DIRECT ABORT ON ERROR;

COPY aug.company_type (
  company_type,
  grade3
)
FROM LOCAL 'GitHub//DWH-Vertica//data//grades//company_type.csv' DELIMITER ';' DIRECT ABORT ON ERROR;

COPY aug.education_level (
  education_level,
  grade4
)
FROM LOCAL 'GitHub//DWH-Vertica//data//grades//education_level.csv' DELIMITER ';' DIRECT ABORT ON ERROR;

COPY aug.enrolled_university (
  enrolled_university,
  grade5
)
FROM LOCAL 'GitHub//DWH-Vertica//data//grades//enrolled_university.csv' DELIMITER ';' DIRECT ABORT ON ERROR;

COPY aug.experience (
  experience,
  grade6
)
FROM LOCAL 'GitHub//DWH-Vertica//data//grades//experience.csv' DELIMITER ';' DIRECT ABORT ON ERROR;

COPY aug.gender (
  gender,
  grade7
)
FROM LOCAL 'GitHub//DWH-Vertica//data//grades//gender.csv' DELIMITER ';' DIRECT ABORT ON ERROR;

COPY aug.last_new_job (
  last_new_job,
  grade8
)
FROM LOCAL 'GitHub//DWH-Vertica//data//grades//last_new_job.csv' DELIMITER ';' DIRECT ABORT ON ERROR;

COPY aug.major_discipline (
  major_discipline,
  grade9
)
FROM LOCAL 'GitHub//DWH-Vertica//data//grades//major_discipline.csv' DELIMITER ';' DIRECT ABORT ON ERROR;

COPY aug.relevent_experience (
  relevent_experience,
  grade10
)
FROM LOCAL 'GitHub//DWH-Vertica//data//grades//relevent_experience.csv' DELIMITER ';' DIRECT ABORT ON ERROR;

COPY aug.target (
  target,
  grade11
)
FROM LOCAL 'GitHub//DWH-Vertica//data//grades//target.csv' DELIMITER ';' DIRECT ABORT ON ERROR;

COPY aug.training_hours (
  training_hours,
  grade12
)
FROM LOCAL 'GitHub//DWH-Vertica//data//grades//training_hours.csv' DELIMITER ',' DIRECT ABORT ON ERROR;
