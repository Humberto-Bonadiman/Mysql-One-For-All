SELECT a.artista AS artista,
	alb.album AS album
FROM SpotifyClone.artistas AS a
INNER JOIN SpotifyClone.albuns AS alb
ON a.artista_id = alb.artista_id
WHERE artista = 'Walter Phoenix'
GROUP BY alb.album, a.artista;