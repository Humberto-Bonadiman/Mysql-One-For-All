CREATE DATABASE IF NOT EXISTS SpotifyClone;
USE SpotifyClone;

CREATE TABLE IF NOT EXISTS usuario_plano (
	usuario_id INT PRIMARY KEY AUTO_INCREMENT,
    usuario VARCHAR(50) CHARACTER SET utf8,
    idade INT,
    plano VARCHAR(50) CHARACTER SET utf8,
    data_assinatura DATE,
    valor_plano FLOAT(2) NOT NULL
) engine=InnoDB;
INSERT INTO usuario_plano (usuario, idade, plano, data_assinatura, valor_plano) VALUES
    ('Thati',23,'gratuito','2019-10-20',0.00),
    ('Cintia',35,'familiar','2017-12-30',7.99),
    ('Bill',20,'universitário','2019-06-05',5.99),
    ('Roger',45,'pessoal','2020-05-13',6.99),
    ('Norman',58,'pessoal','2017-02-17',6.99),
    ('Patrick',33,'familiar','2017-01-06',7.99),
    ('Vivian',26,'universitário','2018-01-05',5.99),
    ('Carol',19,'universitário','2018-02-14',5.99),
    ('Angelina',42,'familiar','2018-04-29',7.99),
    ('Paul',46,'familiar','2017-01-17',7.99);

CREATE TABLE IF NOT EXISTS album (
    `album_id` INT PRIMARY KEY,
    `album` VARCHAR(50) CHARACTER SET utf8,
    `artista` VARCHAR(50) CHARACTER SET utf8,
    `ano_lancamento` INT
) engine=InnoDB;
INSERT INTO album VALUES
    (1,'Envious','Walter Phoenix',1990),
    (2,'Exuberant','Walter Phoenix',1993),
    (3,'Hallowed Steam','Peter Strong',1995),
    (4,'Incandescent','Lance Day',1998),
    (5,'Temporary Culture','Freedie Shannon',2001),
    (6,'Library of liberty','Freedie Shannon',2003),
    (7,'Chained Down','Tyler Isle',2007),
    (8,'Cabinet of fools','Tyler Isle',2012),
    (9,'No guarantees','Tyler Isle',2015),
    (10,'Apparatus','Fog',2015);
    
CREATE TABLE IF NOT EXISTS artista_id (
	artista_id INT PRIMARY KEY AUTO_INCREMENT,
    artista VARCHAR(50)
) engine=InnoDB;
INSERT INTO artista_id (artista) VALUES
    ('Walter Phoenix'),
    ('Peter Strong'),
    ('Lance Day'),
    ('Freedie Shannon'),
    ('Tyler Isle'),
    ('Fog');

CREATE TABLE IF NOT EXISTS reproducao (
    reproducoes_id INT PRIMARY KEY AUTO_INCREMENT,
    reproducoes VARCHAR(50) CHARACTER SET utf8,
    artista_id INT,
    duracao_segundos INT,
    album_id INT,
    FOREIGN KEY (album_id) REFERENCES album(album_id),
    FOREIGN KEY (artista_id) REFERENCES artista_id(artista_id)
) engine=InnoDB;
INSERT INTO reproducao(reproducoes, artista_id, duracao_segundos, album_id) VALUES
    ('Honey',6,79,10),
    ('Walking And Man',5,229,7),
    ('Young And Father',4,197,6),
    ('Diamond Power',3,241,4),
    ('Let"s Be Silly',3,132,4),
    ('I Heard I Want To Bo Alone',5,120,9),
    ('Finding My Traditions',5,179,7),
    ('Without My Love',4,111,6),
    ('Baby',6,136,10),
    ('Magic Circus',2,105,3),
    ('Dance With Her Own',1,116,1),
    ('Hard And Time',5,135,7),
    ('Reflections Of Magic',1,163,1),
    ('I Ride Alone',5,151,9),
    ('Honey, I"m A Lone Wolf',5,150,7),
    ('Honey, So Do I',2,207,3),
    ('Rock His Everything',3,223,4),
    ('Soul For Us',1,200,1),
    ('Wouldn"t It Be Nice',6,213,10),
    ('He Heard You"re Bad For Me',5,154,8),
    ('He Hopes We Can''t Stay',5,210,8),
    ('Walking And Game',4,123,6),
    ('Time Fireworks',1,152,2),
    ('Troubles Of My Inner Fire',1,203,2),
    ('Celebration Of More',3,146,4),
    ('You Make Me Feel So..',6,83,10),
    ('He"s Walking Away',5,159,9),
    ('He"s Trouble',5,138,9),
    ('Thang Of Thunder',4,240,5),
    ('Words Of Her Life',4,185,5),
    ('Sweetie, Let''s Go Wild',2,139,3),
    ('She Knows',2,244,3),
    ('History Of My Roses',4,222,6),
    ('Home Forever',3,231,4),
    ('Fantasy For Me',3,100,4),
    ('Without My Streets',4,176,5),
    ('Need Of The Evening',4,190,6),
    ('I Know I Know',5,117,8),
    ('She Thinks I Won''t Stay Tonight',5,166,8),
    ('You Cheated On Me',6,95,10);

CREATE TABLE IF NOT EXISTS historico_de_reproducao (
    usuario_id INT NOT NULL,
    reproducoes_id INT,
    data_reproducao DATE NOT NULL,
    hora_reproducao TIME NOT NULL,
    FOREIGN KEY (usuario_id) REFERENCES usuario_plano(usuario_id),
    FOREIGN KEY (reproducoes_id) REFERENCES reproducao(reproducoes_id)
) engine=InnoDB;
INSERT INTO historico_de_reproducao VALUES
    (1, 1,'2020-02-28','10:45:55'),
    (1, 2,'2020-05-02','05:30:35'),
    (1, 3,'2020-03-06','11:22:33'),
    (1, 4,'2020-08-05','08:05:17'),
    (1, 5,'2020-09-14','16:32:22'),
    (2, 6,'2020-01-02','07:40:33'),
    (2, 7,'2020-05-16','06:16:22'),
    (2, 8,'2020-10-09','12:27:48'),
    (2, 9,'2020-09-21','13:14:46'),
    (3, 10,'2020-11-13','16:55:13'),
    (3, 11,'2020-12-05','18:38:30'),
    (3, 12,'2020-07-30','10:00:00'),
    (4, 13,'2021-08-15','17:10:10'),
    (4, 14,'2021-07-10','15:20:30'),
    (4, 15,'2021-01-09','01:44:33'),
    (5, 16,'2020-07-03','19:33:28'),
    (5, 17,'2017-02-24','21:14:22'),
    (5, 18,'2020-08-06','15:23:43'),
    (5, 19,'2020-11-10','13:52:27'),
    (6, 20,'2019-02-07','20:33:48'),
    (6, 21,'2017-01-24','00:31:17'),
    (6, 22,'2017-10-12','12:35:20'),
    (6, 23,'2018-05-29','14:56:41'),
    (7, 24,'2018-05-09','22:30:49'),
    (7, 25,'2020-07-27','12:52:58'),
    (7, 26,'2018-01-16','18:40:43'),
    (8, 27,'2018-03-21','16:56:40'),
    (8, 28,'2020-10-18','13:38:05'),
    (8, 29,'2019-05-25','08:14:03'),
    (8, 30,'2021-08-15','21:37:09'),
    (9, 31,'2021-05-24','17:23:45'),
    (9, 32,'2018-12-07','22:48:52'),
    (9, 33,'2021-03-14','06:14:26'),
    (9, 34,'2020-04-01','03:36:00'),
    (10, 35,'2017-02-06','08:21:34'),
    (10, 36,'2017-12-04','05:33:43'),
    (10, 37,'2017-07-27','05:24:49'),
    (10, 38,'2017-12-25','01:03:57');

CREATE TABLE IF NOT EXISTS seguindo_artistas (
    usuario_id INT NOT NULL,
    artista_id INT NOT NULL,
    FOREIGN KEY (usuario_id) REFERENCES usuario_plano(usuario_id),
    FOREIGN KEY (artista_id) REFERENCES artista_id(artista_id)
) engine=InnoDB;
INSERT INTO seguindo_artistas VALUES
    (1, 1),
    (1, 4),
    (1, 3),
    (2, 1),
    (2, 3),
    (3, 2),
    (3, 1),
    (4, 4),
    (5, 5),
    (5, 6),
    (6, 6),
    (6, 3),
    (6, 1),
    (7, 2),
    (7, 5),
    (8, 1),
    (8, 5),
    (9, 6),
    (9, 4),
    (9, 3),
    (10, 6),
    (10, 2);