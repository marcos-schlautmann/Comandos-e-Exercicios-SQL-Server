

		
SELECT LTRIM('      OLA')			/* LTRIM RETIRA OS ESPA�OS EM BRANCO A ESQUERDA (INICIO) */

SELECT RTRIM('OLA      ')			/* RTRIM RETIRA  OS ESPA�OS EM BRANCO A DIREITA (FIM)  */

SELECT CONCAT('OLA ','TUDO BEM')	/* CONCATENA (SOMA) DUAS STRINGS (CONTASNTE OU CAMPO)  */

SELECT 'OLA ' + 'TUDO BEM'

SELECT LEFT('RUA AUGUSTA',3)		/* PEGA UMA CADEIA DE CARAC E PEGA O NUMERO ESPECIFICADO A ESQUERDA (INICIO) */

SELECT RIGHT('RUA AUGUSTA',7)		/* PEGA UMA CADEIA DE CARAC E PEGA O NUMERO ESPECIFICADO A DIREITA (FIM) */

SELECT UPPER('rua augusta')			/* TRANSFOMA CARAC MINUSCULOS EM MAIUSCULOS */

SELECT LOWER('RUA AUGUSTA')			/* TRANSFOMA CARAC MAIUSCULOS EM MINUSCULOS */

SELECT REPLACE('R. AUGUSTA','R.','RUA') /* SUBSTTUI UM DETERMINADO STRING POR OUTRO */

SELECT SUBSTRING('RUA AUGUSTA', 1, 3)		/* PEGA UM PEDA�O DA STRING (DA-SE O NOME DA STRING, A POSI��O INICIAL E QTDADE E CASA PRA FRENTE */

SELECT SUBSTRING('RUA AUGUSTA', 2, 4) 

SELECT LEN('RUA AUGUSTA')					/* RETORNA O NUMERO DE CARAC DENTRO DO STRING  */

SELECT * FROM [TABELA DE CLIENTES]

SELECT CONCAT(NOME, ' (', CPF, ') ') FROM [TABELA DE CLIENTES]


SELECT [CPF]
      ,[NOME]
    FROM [TABELA DE CLIENTES]


SELECT * FROM [dbo].[TABELA DE CLIENTES]

SELECT [NOME] + ' - ' + [ENDERECO 1] + ' - ' + [BAIRRO] + ' - '
+ [CIDADE] + ' - ' + [ESTADO] FROM [TABELA DE CLIENTES]

SELECT NOME, CONCAT([ENDERECO 1] , ' - ', BAIRRO, ' - ', CIDADE, ' - ', ESTADO) 
FROM [TABELA DE CLIENTES]


SELECT NOME, CONCAT([ENDERECO 1], ' ', BAIRRO, ' ', CIDADE, ' ', ESTADO) AS COMPLETO
FROM [TABELA DE CLIENTES]






