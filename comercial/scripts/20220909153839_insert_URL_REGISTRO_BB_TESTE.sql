-- // insert URL REGISTRO BB TESTE
-- Migration SQL that makes the change goes here.

--INSERT INTO seguranca.parametro values (13, 'URL_REGISTRO_BB_TESTE', 'http://api.cosanpa.pa.gov.br/registro_boleto_teste/');

-- //@UNDO
-- SQL to undo the change goes here.

DELETE FROM seguranca.parametro where id = 13;


