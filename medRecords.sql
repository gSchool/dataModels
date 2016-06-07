CREATE TABLE patient(
  id serial primary key,
  name varchar,
  age integer,
  sex varchar,
  is_pregnant boolean
);

CREATE TABLE doctors(
  patient_id integer REFERENCES patient(id),
  phone varchar,
  email varchar,
  type varchar
);

CREATE TABLE allergies(
  patient_id integer REFERENCES patient(id),
  allergies json
);

CREATE TABLE weight(
  patient_id integer REFERENCES patient(id),
  date_weighed date,
  weight numeric(5,2)
);
