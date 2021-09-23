-- // inserts nova tela aprovação login os
-- Migration SQL that makes the change goes here.

-- //  INSERT INTO seguranca.funcionalidade VALUES (NEXTVAL('seguranca.seq_funcionalidade'), 
-- // 1, 'Aprovacao Login', NOW(), 'Gsan/Cadastro/Cliente', 'aprovacao_logins', 1, 'AproLon', 0, 2, 2, 17, 'http://portalgsan.cosanpa.pa.gov.br/aprovacao_logins');


INSERT INTO SEGURANCA.FUNCIONALIDADE (
	FNCD_ID,
	MODU_ID,
	FNCD_DSFUNCIONALIDADE,
	FNCD_TMULTIMAALTERACAO,
	FNCD_DSCAMINHOMENU,
	FNCD_DSCAMINHOURL,
	FNCD_ICPONTOENTRADA,
	FNCD_DSABREVIADO,
	FNCD_NNORDEMMENU,
	FNCD_ICNOVAJANELA,
	FNCD_ICOLAP,
	FNCG_ID,
	URL)
VALUES (
	NEXTVAL('seguranca.seq_funcionalidade'), 
	1, 'Aprovacao Login', 
	NOW(), 
	'Gsan/Cadastro/Atualizacao Cadastral', 
	'aprovacao_logins', 
	1, 
	'AproLon', 
	130, 
	2,
	2,
	10,
	'aprovacao_logins'
);

INSERT INTO SEGURANCA.OPERACAO VALUES (
	NEXTVAL('seguranca.seq_operacao'),
	(SELECT FNCD_ID FROM SEGURANCA.FUNCIONALIDADE WHERE FNCD_DSFUNCIONALIDADE like 'Aprovacao Login'),
	'Aprovacao Login',
	'AproLon',
	NULL,
	NOW(),
	NULL,
	NULL,
	6,
	NULL,
	2
);


INSERT INTO SEGURANCA.GRUPO_FUNC_OPERACAO VALUES (
	1,
	(SELECT OPER_ID FROM SEGURANCA.OPERACAO WHERE OPER_DSOPERACAO like 'Aprovacao Login'),
	(SELECT FNCD_ID FROM SEGURANCA.FUNCIONALIDADE WHERE FNCD_DSFUNCIONALIDADE like 'Aprovacao Login'),
	NOW()
);



-- //@UNDO
-- SQL to undo the change goes here.

DELETE FROM SEGURANCA.GRUPO_FUNC_OPERACAO WHERE FNCD_ID IN (SELECT FNCD_ID FROM SEGURANCA.FUNCIONALIDADE WHERE FNCD_DSFUNCIONALIDADE like 'Aprovacao Login');
DELETE FROM SEGURANCA.OPERACAO WHERE OPER_ID IN (SELECT OPER_ID FROM SEGURANCA.OPERACAO WHERE OPER_DSOPERACAO like 'Aprovacao Login');
DELETE FROM SEGURANCA.FUNCIONALIDADE WHERE FNCD_ID IN (SELECT FNCD_ID FROM SEGURANCA.FUNCIONALIDADE WHERE FNCD_DSFUNCIONALIDADE like 'Aprovacao Login');