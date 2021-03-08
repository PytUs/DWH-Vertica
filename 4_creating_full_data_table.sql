--создаем форму для итоговой таблицы с полным исходным набором данных
create table if not exists aug.fulldata (
  enrollee_id VARCHAR (150) NOT NULL,
  city    VARCHAR (150) NOT NULL,
  city_development_index FLOAT NOT NULL,
  gender VARCHAR (150) NOT NULL,
  relevent_experience VARCHAR (150) NOT NULL,
  enrolled_university VARCHAR (150) NOT NULL,
  education_level VARCHAR (150) NOT NULL,
  major_discipline VARCHAR (150) NOT NULL,
  experience VARCHAR (150) NOT NULL,
  company_size VARCHAR (150) NOT NULL,
  company_type VARCHAR (150) NOT NULL,
  last_new_job VARCHAR (150) NOT NULL,
  training_hours INTEGER NOT NULL,
  target FLOAT NOT NULL
);
--создаем форму для итоговой таблицы с полным исходным набором данных+баллы
create table if not exists aug.grade_table (
  enrollee_id VARCHAR (150),
  city    VARCHAR (150),
  city_development_index FLOAT,
  gender VARCHAR (150),
  relevent_experience VARCHAR (150),
  enrolled_university VARCHAR (150),
  education_level VARCHAR (150),
  major_discipline VARCHAR (150),
  experience VARCHAR (150),
  company_size VARCHAR (150),
  company_type VARCHAR (150),
  last_new_job VARCHAR (150),
  training_hours INTEGER,
  target FLOAT,
  grade1 INTEGER,
  grade2 INTEGER,
  grade3 INTEGER,
  grade4 INTEGER,
  grade5 INTEGER,
  grade6 INTEGER,
  grade7 INTEGER,
  grade8 INTEGER,
  grade9 INTEGER,
  grade10 INTEGER,
  grade11 INTEGER,
  grade12 INTEGER,
  grade_total INTEGER
);
--временная форма для обработки
create table if not exists aug.grade_table1 (
  enrollee_id VARCHAR (150),
  city    VARCHAR (150),
  city_development_index FLOAT,
  gender VARCHAR (150),
  relevent_experience VARCHAR (150),
  enrolled_university VARCHAR (150),
  education_level VARCHAR (150),
  major_discipline VARCHAR (150),
  experience VARCHAR (150),
  company_size VARCHAR (150),
  company_type VARCHAR (150),
  last_new_job VARCHAR (150),
  training_hours INTEGER,
  target FLOAT
);
