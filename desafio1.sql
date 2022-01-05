DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE IF NOT EXISTS SpotifyClone;
USE SpotifyClone;

CREATE TABLE IF NOT EXISTS usuarios (
	usuario_id INT PRIMARY KEY AUTO_INCREMENT,
    usuario VARCHAR(50),
    idade INT
) engine=InnoDB;

CREATE TABLE IF NOT EXISTS planos (
    usuario_id INT NOT NULL,
    plano VARCHAR(50),
    data_assinatura DATE,
    valor_plano FLOAT(2) NOT NULL,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id)
) engine=InnoDB;

CREATE TABLE IF NOT EXISTS historicos (
    usuario_id INT NOT NULL,
    historico_de_reproducao VARCHAR(50),
    data_reproducao DATE NOT NULL,
    hora_reproducao TIME NOT NULL,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id)
) engine=InnoDB;

CREATE TABLE IF NOT EXISTS seguindoArtistas (
    usuario_id INT NOT NULL,
    artista_id INT NOT NULL,
    artista VARCHAR(50),
    FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id)
) engine=InnoDB;

CREATE TABLE IF NOT EXISTS artistas (
	artista_id INT NOT NULL,
    artista VARCHAR(50)
) engine=InnoDB;

CREATE TABLE IF NOT EXISTS albuns (
    album_id INT PRIMARY KEY AUTO_INCREMENT,
    album VARCHAR(50),
    artista VARCHAR(50),
    ano_lancamento INT
) engine=InnoDB;

CREATE TABLE IF NOT EXISTS reproducoes (
    reproducao_id INT PRIMARY KEY AUTO_INCREMENT,
    reproducao VARCHAR(50) NOT NULL,
    artista_id INT,
    duracao_segundos INT,
    album_id INT,
    FOREIGN KEY (album_id) REFERENCES albuns(album_id)
) engine=InnoDB;

INSERT INTO usuarios (usuario, idade) VALUES
    ('Thati',23),
    ('Cintia',35),
    ('Bill',20),
    ('Roger',45),
    ('Norman',58),
    ('Patrick',33),
    ('Vivian',26),
    ('Carol',19),
    ('Angelina',42),
    ('Paul',46);

INSERT INTO planos (usuario_id, plano, data_assinatura, valor_plano) VALUES
    (1,'gratuito','2019-10-20',0.00),
    (2,'familiar','2017-12-30',7.99),
    (3,'universitário','2019-06-05',5.99),
    (4,'pessoal','2020-05-13',6.99),
    (5,'pessoal','2017-02-17',6.99),
    (6,'familiar','2017-01-06',7.99),
    (7,'universitário','2018-01-05',5.99),
    (8,'universitário','2018-02-14',5.99),
    (9,'familiar','2018-04-29',7.99),
    (10,'familiar','2017-01-17',7.99);

INSERT INTO historicos (usuario_id, historico_de_reproducao, data_reproducao, hora_reproducao) VALUES
    (1, 'Honey','2020-02-28','10:45:55'),
    (1, 'Walking And Man','2020-05-02','05:30:35'),
    (1, 'Young And Father','2020-03-06','11:22:33'),
    (1, 'Diamond Power','2020-08-05','08:05:17'),
    (1, 'Let"s Be Silly','2020-09-14','16:32:22'),
    (2, 'I Heard I Want To Bo Alone','2020-01-02','07:40:33'),
    (2, 'Finding My Traditions','2020-05-16','06:16:22'),
    (2, 'Without My Love','2020-10-09','12:27:48'),
    (2, 'Baby','2020-09-21','13:14:46'),
    (3, 'Magic Circus','2020-11-13','16:55:13'),
    (3, 'Dance With Her Own','2020-12-05','18:38:30'),
    (3, 'Hard And Time','2020-07-30','10:00:00'),
    (4, 'Reflections Of Magic','2021-08-15','17:10:10'),
    (4, 'I Ride Alone','2021-07-10','15:20:30'),
    (4, 'Honey, I"m A Lone Wolf','2021-01-09','01:44:33'),
    (5, 'Honey, So Do I','2020-07-03','19:33:28'),
    (5, 'Rock His Everything','2017-02-24','21:14:22'),
    (5, 'Diamond Power','2020-08-06','15:23:43'),
    (5, 'Soul For Us','2020-11-10','13:52:27'),
    (6, 'Wouldn"t It Be Nice','2019-02-07','20:33:48'),
    (6, 'He Heard You"re Bad For Me','2017-01-24','00:31:17'),
    (6, 'He Hopes We Can"t Stay','2017-10-12','12:35:20'),
    (6, 'Walking And Game','2018-05-29','14:56:41'),
    (7, 'Time Fireworks','2018-05-09','22:30:49'),
    (7, 'Troubles Of My Inner Fire','2020-07-27','12:52:58'),
    (7, 'Celebration Of More','2018-01-16','18:40:43'),
    (8, 'Baby','2018-03-21','16:56:40'),
    (8, 'You Make Me Feel So..','2020-10-18','13:38:05'),
    (8, 'He"s Walking Away','2019-05-25','08:14:03'),
    (8, 'He"s Trouble','2021-08-15','21:37:09'),
    (9, 'Thang Of Thunder','2021-05-24','17:23:45'),
    (9, 'Words Of Her Life','2018-12-07','22:48:52'),
    (9, 'Sweetie, Let"s Go Wild','2021-03-14','06:14:26'),
    (9, 'She Knows','2020-04-01','03:36:00'),
    (10, 'History Of My Roses','2017-02-06','08:21:34'),
    (10, 'Without My Love','2017-12-04','05:33:43'),
    (10, 'Rock His Everything','2017-07-27','05:24:49'),
    (10, 'Home Forever','2017-12-25','01:03:57');

INSERT INTO seguindoArtistas (usuario_id, artista_id, artista) VALUES
    (1, 1, 'Walter Phoenix'),
    (1, 4, 'Freedie Shannon'),
    (1, 3, 'Lance Day'),
    (2, 1, 'Walter Phoenix'),
    (2, 3, 'Lance Day'),
    (3, 2, 'Peter Strong'),
    (3, 1, 'Walter Phoenix'),
    (4, 4, 'Freedie Shannon'),
    (5, 5, 'Tyler Isle'),
    (5, 6, 'Fog'),
    (6, 6, 'Fog'),
    (6, 3, 'Lance Day'),
    (6, 1, 'Walter Phoenix'),
    (7, 2, 'Peter Strong'),
    (7, 5, 'Tyler Isle'),
    (8, 1, 'Walter Phoenix'),
    (8, 5, 'Tyler Isle'),
    (9, 6, 'Fog'),
    (9, 4, 'Freedie Shannon'),
    (9, 3, 'Lance Day'),
    (10, 6, 'Fog'),
    (10, 2, 'Peter Strong');

INSERT INTO artistas (artista_id, artista) VALUES
    (1, 'Walter Phoenix'),
    (2, 'Peter Strong'),
    (3, 'Lance Day'),
    (4, 'Freedie Shannon'),
    (5, 'Tyler Isle'),
    (6, 'Fog');

INSERT INTO albuns (album, artista, ano_lancamento) VALUES
    ('Envious','Walter Phoenix',1990),
    ('Exuberant','Walter Phoenix',1993),
    ('Hallowed Steam','Peter Strong',1995),
    ('Incandescent','Lance Day',1998),
    ('Temporary Culture','Freedie Shannon',2001),
    ('Library of liberty','Freedie Shannon',2003),
    ('Chained Down','Tyler Isle',2007),
    ('Cabinet of fools','Tyler Isle',2012),
    ('No guarantees','Tyler Isle',2015),
    ('Apparatus','Fog',2015);

INSERT INTO reproducoes(reproducao, artista_id, duracao_segundos, album_id) VALUES
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
    ('He Hopes We Can"t Stay',5,210,8),
    ('Walking And Game',4,123,6),
    ('Time Fireworks',1,152,2),
    ('Troubles Of My Inner Fire',1,203,2),
    ('Celebration Of More',3,146,4),
    ('You Make Me Feel So..',6,83,10),
    ('He"s Walking Away',5,159,9),
    ('He"s Trouble',5,138,9),
    ('Thang Of Thunder',4,240,5),
    ('Words Of Her Life',4,185,5),
    ('Sweetie, Let"s Go Wild',2,139,3),
    ('She Knows',2,244,3),
    ('History Of My Roses',4,222,6),
    ('Home Forever',3,231,4),
    ('Fantasy For Me',3,100,4),
    ('Without My Streets',4,176,5),
    ('Need Of The Evening',4,190,6),
    ('I Know I Know',5,117,8),
    ('She Thinks I Won"t Stay Tonight',5,166,8),
    ('You Cheated On Me',6,95,10);
