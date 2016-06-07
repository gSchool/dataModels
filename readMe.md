# Data Modeling and Normalization

Through these exercises you should be able to Normalize data using first, second and third norm form


```
* Please Normalize all three of the data models given on either LucidChart or Draw.io * Fork and clone this repo
* Drop the screen shots/links of your data models into the readMe  (There should be 3)
* Submit a pull request
```

## Patient Info

```
CREATE TABLE patient (
  id serial primary key,
  primary_care_physician_id integer REFERENCES physician(id),
  specialist_id integer REFERENCES specialist(id),

);

CREATE TABLE primary_care_physicians (
  id serial primary key,
  primary_care_physician_name varchar,
  primary_care_physician_phone varchar,
  primary_care_physician_email varchar
);

CREATE TABLE specialists (
  id serial primary key,
  specialist_name varchar,
  specialist_phone varchar,
  specialist_email varchar
);

CREATE TABLE patient_info (
  patient_id integer REFERENCES patient(id),
  sex varchar,
  age integer,
  weight integer,
  last_date_weighed date,
  allergies_id integer REFERENCES allergies(id),
  is_pregnant boolean
);

CREATE TABLE allergies (
  id serial primary key,
  name varchar
);
```

## User Info

```
CREATE TABLE user (
  id serial primary key,
  username varchar,
  avatar_id integer REFERENCES avatar(id),
  is_toc_agreed boolean
);

CREATE TABLE avatars (
  id serial primary key,
  avatar_url_small varchar,
  avatar_url_big varchar
);

CREATE TABLE user_subscriptions (
  user_id integer REFERENCES user(id),
  is_subscriber_product_1 boolean,
  subscription_end_product_1 datetime,
  is_subscriber_product_2 boolean,
  subscription_end_product_1 datetime,
  is_subscriber_product_3 boolean,
  subscription_end_product_1 datetime
);
```
