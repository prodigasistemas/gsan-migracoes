-- // permissao_recadastramento_agua_para
-- Migration SQL that makes the change goes here.

insert into seguranca.permissao_especial values (nextval('seguranca.seq_permissao_especial'), 'CONSULTAR RECADASTRAMENTO AGUA PARA', 1, now(), 38);

-- //@UNDO
-- SQL to undo the change goes here.

DELETE from seguranca.permissao_especial where pmep_id = 208;
