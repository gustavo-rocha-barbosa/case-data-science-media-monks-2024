SELECT
 FORMAT_DATETIME('%H', DATETIME(pickup_datetime)) AS hora,
 COUNT(pickup_datetime) AS contagem_horas
FROM
  `projeto-sql-423612.testesql.tlc_yellow_trips_2018`
GROUP BY hora
ORDER BY contagem_horas DESC
LIMIT 1;