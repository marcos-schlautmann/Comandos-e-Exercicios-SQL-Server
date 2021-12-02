
SELECT CEILING(12.333223)		/* RETORNA O MAIRO INTEIRO DO NUMERO USADO NA FUN��O OU COMO PAR�METRO */ 

SELECT FLOOR(12.333223)			/* RETORNA O MENOR INTEIRO DO NUMERO USADO NA FUN��O OU COMO PAR�METRO */ 

SELECT RAND()					/* GERA UM NUMERO ALEATORIO - RAND ([SEED]) - CASO NAO ESPECIF�QUE IR� UTILIZAR UM N�MERO ALEAT�RIO DO CPU  */ 

SELECT ROUND(12.33323323, 2)	/* ARREDONDA UM NUMERO UTILIZANDO O NUMERO DE PRECIS�O COLOCADO NA FUN��O  */ 

SELECT * FROM [ITENS NOTAS FISCAIS]

SELECT [QUANTIDADE], [PRE�O], ROUND(([QUANTIDADE] * [PRE�O]),1) FROM [ITENS NOTAS FISCAIS]

SELECT YEAR(DATA), FLOOR(SUM(IMPOSTO * (QUANTIDADE * PRE�O))) 
FROM [NOTAS FISCAIS] NF
INNER JOIN [ITENS NOTAS FISCAIS] INF ON NF.NUMERO = INF.NUMERO
WHERE YEAR(DATA) = 2016
GROUP BY YEAR(DATA)