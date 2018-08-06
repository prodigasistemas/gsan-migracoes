-- // add parametro contrato adesao
-- Migration SQL that makes the change goes here.

INSERT INTO seguranca.parametro VALUES (nextval('seguranca.seq_seguranca_parametro'),'URL_CONTRATO_ADESAO','http://api.cosanpa.pa.gov.br/contratos_adesao/');


-- //@UNDO
-- SQL to undo the change goes here.


