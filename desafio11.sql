SELECT reproducao AS nome_musica,
	CASE
		WHEN reproducao LIKE '%Streets%' THEN REPLACE(reproducao, 'Streets', 'Code Review')
		WHEN reproducao LIKE '%Her Own%' THEN REPLACE(reproducao, 'Her Own', 'Trybe')
		WHEN reproducao LIKE '%Inner Fire%' THEN REPLACE(reproducao, 'Inner Fire', 'Project')
        WHEN reproducao LIKE '%Silly%' THEN REPLACE(reproducao, 'Silly', 'Nice')
        WHEN reproducao LIKE '%Circus%' THEN REPLACE(reproducao, 'Circus', 'Pull Request')
    END AS novo_nome
FROM SpotifyClone.reproducoes
WHERE reproducao IN 
	("Dance With Her Own",
    "Let's Be Silly",
    "Magic Circus",
    "Troubles Of My Inner Fire",
    "Without My Streets")
ORDER BY nome_musica;