CREATE TABLE patients (
    id serial primary key,
    primary_id int,
    specialist_id int
);

CREATE TABLE primary_care (
    id serial primary key,
    firstname varchar,
    lastname varchar,
    phone varchar,
    email varchar
);

CREATE TABLE specialist (
    id serial primary key,
    firstname varchar,
    lastname varchar,
    phone varchar,
    email varchar
);

CREATE TABLE allergies (
    id serial primary key,
    type varchar
);

CREATE TABLE pt_info (
    pt_id int references patients(id),
    firstname varchar,
    lastname varchar,
    gender varchar(1),
    age smallint
);

CREATE TABLE pt_health (
    pt_id int references patients(id),
    weight smallint,
    last_weighed date,
    is_pregnant boolean,
    allergies_id int references allergies(id)
);
