-- Primeiro jeito usando SUBQUERY - o Código fica mais fácil de ser entendido e daria para usar o HAVING também, mas optei por SUBQUERY:
SELECT
  ROUND(SUM(total_amount), 2) AS soma_receita,
  dia_mes_ano,
  payment_type
FROM (
  SELECT
    total_amount,
    FORMAT_DATE('%d/%m/%y', DATE(pickup_datetime)) AS dia_mes_ano,
    payment_type
  FROM
    `projeto-sql-423612.testesql.tlc_yellow_trips_2018`
)
WHERE dia_mes_ano = '15/03/18'
GROUP BY payment_type, dia_mes_ano
LIMIT 6; -- Limite de 6 linhas, pois isso garante que aparece 6 tipos de pagamentos existentes!

-- Segundo jeito sem usar SUBQUERY:

SELECT
  ROUND(SUM(total_amount),2) AS soma_receita,
  FORMAT_DATE('%d/%m/%y', DATE(pickup_datetime)) AS dia_mes_ano,
  payment_type
FROM
    `projeto-sql-423612.testesql.tlc_yellow_trips_2018`
WHERE FORMAT_DATE('%d/%m/%y', DATE(pickup_datetime)) = '15/03/18'
GROUP BY payment_type, dia_mes_ano
LIMIT 6;
