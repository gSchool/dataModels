CREATE TABLE user (
    id serial primary key,
    is_toc_agreed boolean
);

CREATE TABLE user_profile (
    user_id integer REFERENCES user(id),
    username varchar,
    avatar_url_small varchar,
    avatar_url_large varchar
);

CREATE TABLE user_subscriptions (
    user_id integer REFERENCES user(id),
    subscript_id integer REFERENCES subscript_type(id),
);

CREATE TABLE subscript_type (
    id serial primary key,
    subscript_name varchar
);
