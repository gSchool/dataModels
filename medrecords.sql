CREATE TABLE patients (
  id serial primary key,
  name varchar,
  age integer,
  sex varchar,
  is_pregnant boolean
);

CREATE TABLE doctors (
  patient_id integer REFERENCES patients(id),
  phone varchar,
  e-mail varchar,
  specialty varchar
);

CREATE TABLE allergies (
  patient_id integer REFERENCES patients(id),
  allergies JSON,
);

CREATE TABLE weight (
  patient_id integer REFERENCES patients(id),
  date_weighed date,
  weight integer
);
