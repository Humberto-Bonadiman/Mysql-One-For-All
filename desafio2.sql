SELECT COUNT(DISTINCT c.reproducao_id) AS cancoes,
	COUNT(DISTINCT art.artista_id) AS artistas,
    COUNT(DISTINCT alb.album_id) AS albuns
FROM SpotifyClone.reproducoes AS c
INNER JOIN SpotifyClone.artistas AS art
INNER JOIN SpotifyClone.albuns AS alb
ON c.artista_id = art.artista_id
AND alb.artista_id = art.artista_id;