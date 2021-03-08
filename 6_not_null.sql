--исключаем данные с незаполненными параметрами
INSERT INTO aug.aug_test(
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
  training_hours
)  SELECT distinct
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
  training_hours
  FROM aug.aug_test1
  where
  enrollee_id is not NULL and
  city   is not NULL and
  city_development_index is not NULL and
  gender is not NULL and
  relevent_experience is not NULL and
  enrolled_university is not NULL and
  education_level is not NULL and
  major_discipline is not NULL and
  experience is not NULL and
  company_size is not NULL and
  company_type is not NULL and
  last_new_job is not NULL and
  training_hours is not NULL;

  INSERT INTO aug.aug_train(
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
    training_hours,
    target
  )  SELECT distinct
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
    FROM aug.aug_train1
    where
    enrollee_id is not NULL and
    city   is not NULL and
    city_development_index is not NULL and
    gender is not NULL and
    relevent_experience is not NULL and
    enrolled_university is not NULL and
    education_level is not NULL and
    major_discipline is not NULL and
    experience is not NULL and
    company_size is not NULL and
    company_type is not NULL and
    last_new_job is not NULL and
    training_hours is not NULL and
    target is not NULL;

    INSERT INTO aug.sample_submission(
      enrollee_id,
      target
    )  SELECT distinct
      enrollee_id,
      target
      FROM aug.sample_submission1
      where
      enrollee_id is not NULL and
      target is not NULL;
