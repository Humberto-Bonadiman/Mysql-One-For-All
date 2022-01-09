SELECT r.reproducao AS cancao,
	COUNT(h.reproducao_id) AS reproducoes
FROM SpotifyClone.reproducoes AS r
INNER JOIN SpotifyClone.historicos AS h
ON r.reproducao_id = h.reproducao_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;