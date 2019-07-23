-- // novo parametro versao aplicativo recadastramento
-- Migration SQL that makes the change goes here.

INSERT INTO seguranca.parametro VALUES (nextval('seguranca.seq_seguranca_parametro'), 'VERSAO_APLICATIVO_RECADASTRAMENTO', '1.4.7');

-- //@UNDO
-- SQL to undo the change goes here.

DELETE FROM seguranca.parametro WHERE nome = 'VERSAO_APLICATIVO_RECADASTRAMENTO';