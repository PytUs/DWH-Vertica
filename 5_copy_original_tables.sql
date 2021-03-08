--копируем все необработанные данные в таблицу test1
COPY aug.aug_test1 (
  enrollee_id,
  city,
  city_development_index,
  gender,
  relevent_experience,
  enrolled_university,
  education_level,
  major_discipline,
  experience,
  company_size,
  company_type,
  last_new_job,
  training_hours
)
FROM LOCAL 'GitHub//DWH-Vertica//data//aug_test.csv' DELIMITER ',' DIRECT ABORT ON ERROR;

--копируем все необработанные данные в таблицу train1
COPY aug.aug_train1 (
  enrollee_id,
  city   ,
  city_development_index,
  gender,
  relevent_experience,
  enrolled_university,
  education_level,
  major_discipline,
  experience,
  company_size,
  company_type,
  last_new_job,
  training_hours,
  target
)
FROM LOCAL 'GitHub//DWH-Vertica//data//aug_train.csv' DELIMITER ',' DIRECT ABORT ON ERROR;

--копируем все необработанные данные в таблицу ..submission1
COPY aug.sample_submission1 (
  enrollee_id,
  target
)
FROM LOCAL 'GitHub//DWH-Vertica//data//sample_submission.csv' DELIMITER ',' DIRECT ABORT ON ERROR;
