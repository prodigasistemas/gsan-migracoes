-- // Add registro na tabela_coluna para  solicitacao_tipo
-- Migration SQL that makes the change goes here.

insert into seguranca.tabela_coluna values (nextval('seguranca.seq_tabela_coluna'), 421, now(), 'sotp_icusosistema', 'Uso sistema', 2, null, null, 2, 2);

-- //@UNDO
-- SQL to undo the change goes here.



