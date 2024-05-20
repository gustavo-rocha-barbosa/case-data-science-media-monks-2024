-- Primeira QUERY com um tipo de interpretação do enúnciado:

SELECT
 ROUND(SUM(tolls_amount), 2) AS soma_receita,
 COUNT(tolls_amount) AS contagem_pedagios,
 ROUND(SUM(tolls_amount)/COUNT(tolls_amount), 2) AS media_valor_pedagios
FROM
  `projeto-sql-423612.testesql.tlc_yellow_trips_2018`

-- Minha interpretação: Até 3 passageiros inclui a condição de 0 passageiros também, por isso coloquei <= 3 (no WHERE abaixo) para o número de passageiros.
  WHERE passenger_count <= 3 AND tolls_amount > 0
LIMIT 1;

-- Segunda QUERY, pois o enunciado pode ter duas interpretações: considerando 0 passageiros e considerando 1 passageiro como mínimo:

SELECT
 ROUND(SUM(tolls_amount), 2) AS soma_receita,
 COUNT(tolls_amount) AS contagem_pedagios,
 ROUND(SUM(tolls_amount)/COUNT(tolls_amount), 2) AS media_valor_pedagios
FROM
  `projeto-sql-423612.testesql.tlc_yellow_trips_2018`
-- Considerando agora que a condição seja de ter pelo menos 1 passageiro até 3 passageiros.
  WHERE passenger_count >= 1 AND passenger_count <= 3 AND tolls_amount > 0
LIMIT 1;

