--создаем формы для таблиц с баллами
create table if not exists aug.city (
  city    VARCHAR(100),
  city_development_index FLOAT,
  grade1 INTEGER
);

create table if not exists aug.company_size (
  company_size VARCHAR(100),
  grade2 INTEGER
);

create table if not exists aug.company_type (
  company_type VARCHAR(100),
  grade3 INTEGER
);

create table if not exists aug.education_level (
  education_level VARCHAR(100),
  grade4 INTEGER
);

create table if not exists aug.enrolled_university (
  enrolled_university VARCHAR(100),
  grade5 INTEGER
);

create table if not exists aug.experience (
  experience VARCHAR(100),
  grade6 INTEGER
);

create table if not exists aug.gender (
  gender VARCHAR(100),
  grade7 INTEGER
);

create table if not exists aug.last_new_job (
  last_new_job VARCHAR(100),
  grade8 INTEGER
);

create table if not exists aug.major_discipline (
  major_discipline VARCHAR(100),
  grade9 INTEGER
);

create table if not exists aug.relevent_experience (
  relevent_experience VARCHAR(100),
  grade10 INTEGER
);

create table if not exists aug.target (
  target FLOAT,
  grade11 INTEGER
);

create table if not exists aug.training_hours (
  training_hours INTEGER,
  grade12 INTEGER
);
