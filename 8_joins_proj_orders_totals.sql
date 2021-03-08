--соединяем данные test c submission (target)
INSERT INTO aug.fulldata(
  enrollee_id ,
  city    ,
  city_development_index ,
  gender ,
  relevent_experience ,
  enrolled_university ,
  education_level ,
  major_discipline ,
  experience ,
  company_size ,
  company_type ,
  last_new_job ,
  training_hours ,
  target
)  SELECT distinct
  a.enrollee_id as enrollee_id,
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
  b.target as target
  FROM aug.aug_test a
  join aug.sample_submission b on a.enrollee_id=b.enrollee_id;

--добавляем данные из таблицы train
  merge INTO aug.fulldata t(
    enrollee_id,
    city    ,
    city_development_index ,
    gender ,
    relevent_experience ,
    enrolled_university ,
    education_level ,
    major_discipline ,
    experience ,
    company_size ,
    company_type ,
    last_new_job ,
    training_hours ,
    target
  ) USING aug.aug_train d
  ON (t.enrollee_id=d.enrollee_id
  )
  WHEN NOT MATCHED THEN INSERT (
  enrollee_id ,
  city    ,
  city_development_index ,
  gender ,
  relevent_experience ,
  enrolled_university ,
  education_level ,
  major_discipline ,
  experience ,
  company_size ,
  company_type ,
  last_new_job ,
  training_hours ,
  target)
  VALUES (
    d.enrollee_id ,
    d.city    ,
    d.city_development_index ,
    d.gender ,
    d.relevent_experience ,
    d.enrolled_university ,
    d.education_level ,
    d.major_discipline ,
    d.experience ,
    d.company_size ,
    d.company_type ,
    d.last_new_job ,
    d.training_hours ,
    d.target
  );

--проверка на дубликаты

create or replace view aug.vi as
select distinct enrollee_id,
count(enrollee_id) OVER (partition by enrollee_id) as dublicates
from aug.fulldata;

select enrollee_id,dublicates
from aug.vi
where dublicates>1;

select count(dublicates) from aug.vi;
select count(enrollee_id) from aug.vi;

--зальем предудущие данные в таблицу,подготовленную для расчета итоговых баллов
INSERT INTO aug.grade_table1(
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
training_hours ,
target
)
SELECT
enrollee_id ,
city    ,
city_development_index ,
gender ,
relevent_experience ,
enrolled_university ,
education_level ,
major_discipline ,
experience ,
company_size ,
company_type ,
last_new_job ,
training_hours ,
target
FROM aug.fulldata;

--соеберм все баллы в одну таблицу
INSERT INTO aug.grade_table(
  enrollee_id ,
  city    ,
  city_development_index ,
  gender ,
  relevent_experience ,
  enrolled_university ,
  education_level ,
  major_discipline ,
  experience ,
  company_size ,
  company_type ,
  last_new_job ,
  training_hours ,
  target,
  grade1,
  grade2,
  grade3,
  grade4,
  grade5,
  grade6,
  grade7,
  grade8,
  grade9,
  grade10,
  grade11,
  grade12
)SELECT distinct
  enrollee_id,
  bb.city as city,
  bb.city_development_index as city_development_index,
  c.gender as gender,
  d.relevent_experience as relevent_experience,
  e.enrolled_university as enrolled_university,
  f.education_level as education_level,
  g.major_discipline as major_discipline,
  h.experience as experience,
  i.company_size as company_size,
  j.company_type as company_type,
  k.last_new_job as last_new_job,
  l.training_hours as training_hours,
  m.target as target,

  bb.grade1 as grade1,
  i.grade2 as grade2,
  j.grade3 as grade3,
  f.grade4 as grade4,
  e.grade5 as grade5,
  h.grade6 as grade6,
  c.grade7 as grade7,
  k.grade8 as grade8,
  g.grade9 as grade9,
  d.grade10 as grade10,
  m.grade11 as grade11,
  l.grade12 as grade12
  FROM aug.grade_table1 aa

  join aug.city bb on aa.city=bb.city
  join aug.company_size i on aa.company_size=i.company_size
  join aug.company_type j on aa.company_type=j.company_type
  join aug.education_level f on aa.education_level=f.education_level
  join aug.enrolled_university e on aa.enrolled_university=e.enrolled_university
  join aug.experience h on aa.experience=h.experience
  join aug.gender c on aa.gender=c.gender
  join aug.last_new_job k on aa.last_new_job=k.last_new_job
  join aug.major_discipline g on aa.major_discipline=g.major_discipline
  join aug.relevent_experience d on aa.relevent_experience=d.relevent_experience
  join aug.target m on aa.target=m.target
  join aug.training_hours l on aa.training_hours=l.training_hours;

--создадим проекцию для анализа итоговых показателей по id
CREATE PROJECTION IF NOT EXISTS aug.grades AS
SELECT enrollee_id,
(grade1+
grade2+
grade3+
grade4+
grade5+
grade6+
grade7+
grade8+
grade9+
grade10+
grade11+
grade12) as totals
from aug.grade_table;
select start_refresh();


--просмотр топ 10 id пользователей по набранным баллам - потенциальные кандидаты для работодателя, проводившего курс
  select
  enrollee_id,
  totals
  from aug.grades
  ORDER BY totals desc limit 10;
