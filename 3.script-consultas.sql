/* 1 - Faturamento por paciente */
SELECT 
MIN(tb_paciente.id) AS Id,
tb_paciente.nome AS Paciente, 
SUM(CASE WHEN tb_consulta.compareceu = 0 THEN 0 ELSE tb_consulta.preco END) AS Faturamento
FROM tb_paciente
LEFT JOIN tb_consulta 
ON tb_paciente.id = tb_consulta.id_paciente
GROUP BY tb_paciente.nome;



/* 2 - Faturamento por tratamento */
SELECT descricao AS Tratamento, 
SUM(CASE WHEN compareceu = 0 THEN 0 ELSE preco END) AS Faturamento
FROM tb_consulta
GROUP BY descricao



/* 3 - Faturamento por período (dia, semana, mês, ano) */
/* a - DIA */
SELECT DATE(dt_consulta) AS Dia, 
SUM(CASE WHEN compareceu = 0 THEN 0 ELSE preco END) AS Faturamento
FROM tb_consulta
GROUP BY DATE(dt_consulta)

/* b - SEMANA */
SELECT YEARWEEK(dt_consulta) AS Semana, 
SUM(CASE WHEN compareceu = 0 THEN 0 ELSE preco END) AS Faturamento
FROM tb_consulta
GROUP BY YEARWEEK(dt_consulta)

/* c - MÊS */
SELECT MONTH(dt_consulta) AS Mes, YEAR(dt_consulta) AS Ano, 
SUM(CASE WHEN compareceu = 0 THEN 0 ELSE preco END) AS Faturamento
FROM tb_consulta
GROUP BY MONTH(dt_consulta), YEAR(dt_consulta)

/* d - ANO */
SELECT YEAR(dt_consulta) AS Ano, 
SUM(CASE WHEN compareceu = 0 THEN 0 ELSE preco END) AS Faturamento
FROM tb_consulta
GROUP BY YEAR(dt_consulta)



/* 4 - Quantidade de clientes por período (dia, semana, mês, ano) */
/* a - DIA */
SELECT DATE(dt_consulta) AS Dia, 
COUNT(CASE WHEN compareceu = 1 THEN id_paciente END) AS QtdPacientes
FROM tb_consulta
GROUP BY DATE(dt_consulta)

/* b - SEMANA */
SELECT YEARWEEK(dt_consulta) AS Semana, 
COUNT(CASE WHEN compareceu = 1 THEN id_paciente END) AS QtdPacientes
FROM tb_consulta
GROUP BY YEARWEEK(dt_consulta)

/* c - MÊS */
SELECT MONTH(dt_consulta) AS Mes, YEAR(dt_consulta) AS Ano,  
COUNT(CASE WHEN compareceu = 1 THEN id_paciente END) AS QtdPacientes
FROM tb_consulta
GROUP BY MONTH(dt_consulta), YEAR(dt_consulta)

/* d - ANO */
SELECT YEAR(dt_consulta) AS Ano, 
COUNT(CASE WHEN compareceu = 1 THEN id_paciente END) AS QtdPacientes
FROM tb_consulta
GROUP BY YEAR(dt_consulta)



/* 5 - Taxa de comparecimento por paciente */
SELECT tb_consulta.id_paciente AS Id,
tb_paciente.nome AS Nome,
COUNT(*) AS TotalConsultas,
SUM(CASE WHEN compareceu = 1 THEN 1 ELSE 0 END) AS ConsultasComparecidas,
IFNULL(SUM(CASE WHEN compareceu = 1 THEN 1 ELSE 0 END) / COUNT(*), 0) AS TaxaComparecimento
FROM tb_paciente
INNER JOIN tb_consulta
ON tb_paciente.id = tb_consulta.id_paciente
GROUP BY tb_consulta.id_paciente;



/* 6 - Tratamento mais vendido */
SELECT descricao AS TratamentoMaisVendido,
COUNT(CASE WHEN compareceu = 1 THEN descricao END) AS QtdConsultas
FROM tb_consulta
GROUP BY descricao
ORDER BY QtdConsultas DESC
LIMIT 1;



/* 7 - Dia da semana com mais pacientes agendados */
SELECT DAYOFWEEK(dt_consulta) AS NumeroDiaSemana,
COUNT(*) AS QtdPacientesAgendados
FROM tb_consulta
GROUP BY NumeroDiaSemana
ORDER BY QtdPacientesAgendados DESC
LIMIT 1;