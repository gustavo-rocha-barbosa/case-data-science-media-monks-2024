SELECT
 passenger_count,
 COUNT(passenger_count) AS contagem_corridas,
 ROUND(SUM(total_amount), 2) AS faturamento_medio_corrida,
 ROUND(SUM(total_amount)/COUNT(passenger_count), 2) AS faturamento_medio_por_passageiro
FROM
 `projeto-sql-423612.testesql.tlc_yellow_trips_2018`
WHERE passenger_count >= 1 AND passenger_count <= 5
GROUP BY passenger_count
ORDER BY passenger_count
LIMIT 5;


