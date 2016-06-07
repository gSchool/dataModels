CREATE TABLE user(
  id serial primary key,
  username varchar,
  is_toc_agreed boolean
);

CREATE TABLE subscriptions(
  user_id REFERENCES user.id,
  product varchar,
  sub_end date
);

CREATE TABLE avatar(
  user_id REFERENCES user.id,
  url_big varchar
  url_small varchar
);
