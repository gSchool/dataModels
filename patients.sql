CREATE TABLE patient (
  id serial PRIMARY KEY,
  name varchar,
  sex varchar,
  age int,
  weight int,
  last_weighed_date date,
  is_pregnant boolean,


CREATE TABLE Physicians (
  id serial PRIMARY KEY,
  name varchar,
  phone numeric,
  email varchar,
  is_specialist boolean
);

CREATE TABLE patient_physicians(
    patiend_id serial PRIMARY KEY,
    physicians_id
  );

  CREATE TABLE allergies(
    id serial PRIMARY KEY,
    name_allergies varchar
  );



  -- ///////////////////////

  CREATE TABLE user(
    id serial PRIMARY KEY,
    username varchar,
    avatar_url_small varchar,
    avatar_url_large varchar,
    is_toc_agreed boolean
  );

  CREATE TABLE products(
    id serial PRIMARY KEY,
    name varchar
  );

  CREATE TABLE user_subscriptions(
    product_id FOREIGN KEY,
    user_id FOREIGN KEY,
    subscription_end_date date
  );
