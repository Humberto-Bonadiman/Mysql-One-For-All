SELECT CONVERT (MIN(p.valor_plano), DECIMAL(3, 2)) AS faturamento_minimo,
	CONVERT (MAX(p.valor_plano), DECIMAL(3, 2)) AS faturamento_maximo,
    CONVERT (AVG(p.valor_plano), DECIMAL(3, 2)) AS faturamento_medio,
    CONVERT (SUM(p.valor_plano), DECIMAL(4, 2)) AS faturamento_total
FROM SpotifyClone.planos AS p
INNER JOIN SpotifyClone.usuarios AS u
ON p.plano_id = u.plano_id;