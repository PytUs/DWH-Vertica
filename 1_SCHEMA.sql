DROP PROJECTION IF EXISTS aug.grades;
--обозначения с 1 - данные без null
--список исходных данных из kaggle
drop table if exists aug.aug_test;
drop table if exists aug.aug_test1;
drop table if exists aug.aug_train;
drop table if exists aug.aug_train1;
drop table if exists aug.sample_submission;
drop table if exists aug.sample_submission1;
--вторичные данные (изначально без null)
--система баллов при оценке подходящих кандидатов
drop table if exists aug.city;
drop table if exists aug.company_size;
drop table if exists aug.company_type;
drop table if exists aug.education_level;
drop table if exists aug.enrolled_university;
drop table if exists aug.experience;
drop table if exists aug.gender;
drop table if exists aug.last_new_job;
drop table if exists aug.major_discipline;
drop table if exists aug.relevent_experience;
drop table if exists aug.target;
drop table if exists aug.training_hours;
--таблицы для полного подготовленного набора исходных данных
drop table if exists aug.fulldata;
drop table if exists aug.grade_table;
drop table if exists aug.grade_table1;
--для контроля дубликатов
drop view if exists aug.vi;


DROP SCHEMA IF EXISTS aug;
CREATE SCHEMA aug;
