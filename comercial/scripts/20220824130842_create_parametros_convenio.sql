-- // create parametros convenio
-- Migration SQL that makes the change goes here.

--CREATE SEQUENCE arrecadacao.seq_parametros_convenio
--  INCREMENT 1
--  MINVALUE 1
--  MAXVALUE 9223372036854775807
--  START 1
--  CACHE 1; 
--ALTER TABLE arrecadacao.seq_parametros_convenio OWNER TO gsan_admin;
--CREATE TABLE arrecadacao.parametros_convenio
--(
--  prcv_id integer NOT NULL DEFAULT nextval('arrecadacao.seq_parametros_convenio'),
--  prcv_nnconvenio integer NOT NULL,
--  prcv_nncarteira integer NOT NULL,
--  prcv_nnvariacaocarteira integer NOT NULL, 
--  prcv_cdtipotitulo integer NOT NULL,
--  CONSTRAINT parametros_convenio_pkey PRIMARY KEY (prcv_id)
--  );
--    
--ALTER TABLE arrecadacao.parametros_convenio OWNER TO gsan_admin;

-- //@UNDO
-- SQL to undo the change goes here.

DROP TABLE arrecadacao.parametros_convenio;
DROP SEQUENCE arrecadacao.seq_parametros_convenio;
