SELECT u.usuario AS usuario,
  COUNT(h.usuario_id) AS qtde_musicas_ouvidas,
  ROUND(SUM(r.duracao_segundos/60), 2) AS total_minutos
FROM SpotifyClone.usuarios AS u
INNER JOIN SpotifyClone.historicos AS h
ON u.usuario_id = h.usuario_id
INNER JOIN SpotifyClone.reproducoes AS r
ON h.reproducao_id = r.reproducao_id
GROUP BY u.usuario
ORDER BY u.usuario;