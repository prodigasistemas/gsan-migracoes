-- // novo parametro url servidor imagens
-- Migration SQL that makes the change goes here.

INSERT INTO seguranca.parametro VALUES (nextval('seguranca.seq_seguranca_parametro'), 'URL_SERVIDOR_IMAGENS', 'http://files.cosanpa.pa.gov.br');

-- //@UNDO
-- SQL to undo the change goes here.

DELETE FROM seguranca.parametro WHERE nome = 'URL_SERVIDOR_IMAGENS';
