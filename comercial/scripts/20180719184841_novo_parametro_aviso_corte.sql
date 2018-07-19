-- // novo parametro aviso corte
-- Migration SQL that makes the change goes here.

INSERT INTO seguranca.parametro VALUES ((SELECT max(id) + 1 FROM seguranca.parametro), 'URL_AVISO_CORTE', 'http://api.cosanpa.pa.gov.br/avisos_corte/');

-- //@UNDO
-- SQL to undo the change goes here.

DELETE FROM seguranca.parametro WHERE nome = 'URL_AVISO_CORTE';
