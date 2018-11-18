CREATE TABLE gardens (
  id serial,
  nom text NOT NULL DEFAULT '',
  photo text NOT NULL DEFAULT '',
  description text NOT NULL DEAULT ''
);

CREATE TABLE users (
  id serial,
  username character varying(32) NOT NULL,
  photo text NOT NULL
);

CREATE TABLE users_x_gardens (
  id serial,
  id_user integer NOT NULL,
  id_garden integer NOT NULL
);
