--форма для загрузки необработанных исх. данных test
--предположим,что test и train - это полный набор данных из разных источников, анализируем его полностью
--sample - это отдельный набор. который необходимо присоединить к test
create table if not exists aug.aug_test1 (
  enrollee_id VARCHAR(100) ,
  city    VARCHAR(100) ,
  city_development_index FLOAT ,
  gender VARCHAR(100) ,
  relevent_experience VARCHAR(100) ,
  enrolled_university VARCHAR(100) ,
  education_level VARCHAR(100) ,
  major_discipline VARCHAR(100) ,
  experience VARCHAR(100) ,
  company_size VARCHAR(100) ,
  company_type VARCHAR(100) ,
  last_new_job VARCHAR(100) ,
  training_hours INTEGER
)
ORDER BY enrollee_id
;
--подготовленные исх. данные, очищенные от null test
create table if not exists aug.aug_test (
  enrollee_id VARCHAR(100) not NULL,
  city    VARCHAR(100) not NULL,
  city_development_index FLOAT not NULL,
  gender VARCHAR(100) not NULL,
  relevent_experience VARCHAR(100) not NULL,
  enrolled_university VARCHAR(100) not NULL,
  education_level VARCHAR(100) not NULL,
  major_discipline VARCHAR(100) not NULL,
  experience VARCHAR(100) not NULL,
  company_size VARCHAR(100) not NULL,
  company_type VARCHAR(100) not NULL,
  last_new_job VARCHAR(100) not NULL,
  training_hours INTEGER not NULL
)
ORDER BY enrollee_id
;
--форма для загрузки необработанных исх. данных train
create table if not exists aug.aug_train1 (
  enrollee_id VARCHAR(100) ,
  city    VARCHAR(100) ,
  city_development_index FLOAT ,
  gender VARCHAR(100) ,
  relevent_experience VARCHAR(100) ,
  enrolled_university VARCHAR(100) ,
  education_level VARCHAR(100) ,
  major_discipline VARCHAR(100) ,
  experience VARCHAR(100) ,
  company_size VARCHAR(100) ,
  company_type VARCHAR(100) ,
  last_new_job VARCHAR(100) ,
  training_hours INTEGER ,
  target FLOAT
);
--подготовленные исх. данные, очищенные от null train
create table if not exists aug.aug_train (
  enrollee_id VARCHAR(100) not NULL,
  city    VARCHAR(100) not NULL,
  city_development_index FLOAT not NULL,
  gender VARCHAR(100) not NULL,
  relevent_experience VARCHAR(100) not NULL,
  enrolled_university VARCHAR(100) not NULL,
  education_level VARCHAR(100) not NULL,
  major_discipline VARCHAR(100) not NULL,
  experience VARCHAR(100) not NULL,
  company_size VARCHAR(100) not NULL,
  company_type VARCHAR(100) not NULL,
  last_new_job VARCHAR(100) not NULL,
  training_hours INTEGER not NULL,
  target FLOAT not NULL
);
--форма для загрузки необработанных исх. данных sample
create table if not exists aug.sample_submission1 (
  enrollee_id VARCHAR(100) ,
  target FLOAT
)
ORDER BY enrollee_id
;
--подготовленные исх. данные, очищенные от null sample
create table if not exists aug.sample_submission (
  enrollee_id VARCHAR(100) not NULL,
  target FLOAT not NULL
)
ORDER BY enrollee_id
;
