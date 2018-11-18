

INSERT INTO gardens (id, nom, photo, description) VALUES
(1, 'Eden', '', 'Jardin parfait !'),
(2, 'Verger', '', 'Tentative de faire pousser des fruits.');

INSERT INTO users (id, username, photo) VALUES
(1, 'foo', ''),
(2, 'bar', ''),
(3, 'baz', '');

INSERT INTO users_x_gardens (id, id_user, id_garden) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 1),
(4, 3, 1);
