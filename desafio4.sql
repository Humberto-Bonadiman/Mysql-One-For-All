SELECT u.usuario AS usuario,
	CASE
		WHEN MAX(YEAR(r.data_reproducao)) = 2021 THEN 'Usuário ativo'
        ELSE 'Usuário inativo'
    END AS condicao_usuario
FROM SpotifyClone.usuarios AS u
INNER JOIN SpotifyClone.historicos AS r
ON u.usuario_id = r.usuario_id
GROUP BY u.usuario
ORDER BY u.usuario;