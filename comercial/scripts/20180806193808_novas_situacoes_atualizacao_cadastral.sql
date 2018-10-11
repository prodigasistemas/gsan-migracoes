-- // novas situacoes atualizacao cadastral
-- Migration SQL that makes the change goes here.

update cadastro.situacao_atlz_cadastral set siac_dssituacao = 'REVISADO' where siac_id = 9;
insert into cadastro.situacao_atlz_cadastral values (10,'FISCALIZADO',1,now());

-- //@UNDO
-- SQL to undo the change goes here.

update cadastro.situacao_atlz_cadastral set siac_dssituacao = 'A REVISAR' where siac_id = 8;
delete from cadastro.situacao_atlz_cadastral where siac_dssituacao like 'FISCALIZADO';

