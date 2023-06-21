-- // url_arquivos_server
-- Migration SQL that makes the change goes here.

insert into seguranca.parametro values (15, 'URL_ARQUIVOS_SERVER', 'file://');

-- //@UNDO
-- SQL to undo the change goes here.

delete from seguranca.parametro where id = 15
