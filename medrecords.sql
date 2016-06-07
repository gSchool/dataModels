CREATE TABLE patients VALUES (
  id serial primary key,
  name varchar,
  age integer,
  sex varchar,
  is_pregnant boolean
);

CREATE TABLE doctors VALUES (
  patient_id integer REFERENCES patients.id,
  phone varchar,
  e-mail varchar,
  specialty varchar
);

CREATE TABLE allergies VALUES (
  patient_id integer REFERENCES patients.id,
  allergies JSON,
);

CREATE TABLE weight VALUES (
  patient_id integer REFERENCES patients.id,
  date_weighed date,
  weight integer
);
