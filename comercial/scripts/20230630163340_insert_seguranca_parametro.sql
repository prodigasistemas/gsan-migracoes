-- // insert seguranca parametro
-- Migration SQL that makes the change goes here.

INSERT INTO seguranca.parametro VALUES (16, 'URL_BASIC_AUTH', 'http://api.cosanpa.pa.gov.br/basic_auth')

-- //@UNDO
-- SQL to undo the change goes here.

DELETE FROM seguranca.parametro WHERE id = 16;
