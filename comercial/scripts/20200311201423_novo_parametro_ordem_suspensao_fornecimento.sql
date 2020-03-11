-- // novo parametro ordem suspensao fornecimento
-- Migration SQL that makes the change goes here.

INSERT INTO seguranca.parametro VALUES (nextval('seguranca.seq_seguranca_parametro'), 'URL_ORDEM_SUSPENSAO_FORNECIMENTO', 'http://api.cosanpa.pa.gov.br/ordens_suspensao_fornecimento/');

-- //@UNDO
-- SQL to undo the change goes here.

DELETE FROM seguranca.parametro WHERE nome = 'URL_ORDEM_SUSPENSAO_FORNECIMENTO';
