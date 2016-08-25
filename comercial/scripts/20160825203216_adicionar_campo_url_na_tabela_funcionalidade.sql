-- // adicionar campo url na tabela funcionalidade
-- Migration SQL that makes the change goes here.

alter table seguranca.funcionalidade 
  add column url character varying(60);

COMMENT ON COLUMN seguranca.funcionalidade.url IS 'Url das funcionalidades para ser usada em novo seguranca';

-- //@UNDO
-- SQL to undo the change goes here.

alter table seguranca.funcionalidade 
  drop column url;