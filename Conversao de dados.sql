
/* 
	CONVERS?O DE DADOS UTILIZAMOS CAST OU CONVERT

	DIFEREN?A ENTRE CAST E CONVERT => AMBAS FAZEM A MESMA COISA MAS CAST ? USADO 
	NO PADR?O SQL (LINGUAGEM) EXISTINDO EM OUTRO BANCOS DE DADOS COMO ORACLE, MYSQL.
	CONVERT ESPEC?FICO UTILIZADO NO SQL SERVER E MUITO MAIS PODEROSO NA CONVERS?O POR SE TRATAR
	DE UM RECURSO DO PROPRIO PROGRAMA.

	UTILIZAR SEMPRE O CONVERT NO SQL SERVER

 */

 
SELECT CONVERT(VARCHAR, GETDATE(), 101)

SELECT CONVERT(VARCHAR, GETDATE(), 113)

SELECT CONVERT(VARCHAR, GETDATE(), 130)

SELECT CONVERT(decimal(10,5), 193.57)

SELECT * FROM [TABELA DE PRODUTOS]

SELECT 'O pre?o do produto ' + [NOME DO PRODUTO] + ' ? ' +  [PRE?O DE LISTA] 
FROM [TABELA DE PRODUTOS]

SELECT 'O pre?o do produto ' + [NOME DO PRODUTO] + ' ? ' + 'R$ ' + CONVERT(VARCHAR, [PRE?O DE LISTA]) 
FROM [TABELA DE PRODUTOS]


SELECT CONCAT('O cliente ', TC.NOME, ' faturou R$ ', 
CONVERT(VARCHAR, CONVERT(DECIMAL(15,2), SUM(INF.QUANTIDADE * INF.[PRE?O]))), ' no ano de ',   
CONVERT(VARCHAR, YEAR(NF.DATA))) AS SENTENCA FROM [NOTAS FISCAIS] NF
INNER JOIN [ITENS NOTAS FISCAIS] INF ON NF.NUMERO = INF.NUMERO
INNER JOIN [TABELA DE CLIENTES] TC ON NF.CPF = TC.CPF
WHERE YEAR(DATA) = 2016
GROUP BY TC.NOME, YEAR(DATA)