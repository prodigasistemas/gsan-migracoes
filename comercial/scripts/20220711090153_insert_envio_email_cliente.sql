-- // insert_do campo que contém email e descrição de envio email ao cliente
-- Migration SQL that makes the change goes here.

INSERT INTO cadastro.envio_email(
	enem_id, enem_dsemailremetente, enem_dsemailreceptor, enem_dstitulomensagem, enem_dscorpomensagem, fncd_id, enem_tmultimaalteracao)
	VALUES (nextval('cadastro.seq_envio_email'), 'gsan@cosanpa.pa.gov.br', '', 'Conta Cliente', 'Conta Cliente', 1297, now());
	
-- //@UNDO
-- SQL to undo the change goes here.

	DELETE FROM cadastro.envio_email WHERE enem_dstitulomensagem = 'Conta Cliente';