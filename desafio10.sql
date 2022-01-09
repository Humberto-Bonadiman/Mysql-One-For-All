SELECT r.reproducao AS nome,
	COUNT(h.reproducao_id) AS reproducoes
FROM  SpotifyClone.reproducoes AS r
INNER JOIN SpotifyClone.historicos AS h
ON r.reproducao_id = h.reproducao_id
INNER JOIN SpotifyClone.usuarios AS u
ON h.usuario_id = u.usuario_id
WHERE u.plano_id = 1 OR u.plano_id = 3
GROUP BY nome
ORDER BY nome;