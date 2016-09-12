-- // alterar coluna url na tabela funcionalidade
-- Migration SQL that makes the change goes here.

alter table seguranca.funcionalidade
  alter column url TYPE character varying(240);

-- //@UNDO
-- SQL to undo the change goes here.


