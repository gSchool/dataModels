CREATE TABLE user (
  id serial primary key,
  username varchar,
  is_toc_agreed boolean
);

CREATE TABLE subs (
  user_id integer REFERENCES user(id),
  product varchar,
  subscription_end date
);

CREATE TABLE avatar (
  user_id integer REFERENCES user(id),
  avatar_url_small varchar,
  avatar_url_large varchar
);
