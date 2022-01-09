SELECT a.artista AS artista,
	alb.album AS album,
    COUNT(u.usuario_id) AS seguidores
FROM SpotifyClone.artistas AS a
INNER JOIN SpotifyClone.albuns AS alb
ON a.artista_id = alb.artista_id
INNER JOIN SpotifyClone.seguindoArtistas AS u
ON alb.artista_id = u.artista_id
GROUP BY alb.album, a.artista
ORDER BY seguidores DESC, artista, album;
