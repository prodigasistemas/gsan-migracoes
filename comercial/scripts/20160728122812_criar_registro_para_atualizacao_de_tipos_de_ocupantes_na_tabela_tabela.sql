-- // criar registro para atualizacao de tipos de ocupantes na tabela tabela
-- Migration SQL that makes the change goes here.

insert into seguranca.tabela values (666, now(), 'cadastro.imovel_tipo_ocupante_quantidade_atualizacao_cadastral', 'Quantidades de ocupantes do imovel')

-- //@UNDO
-- SQL to undo the change goes here.

delete from seguranca.tabela where tabe_id = 666;
