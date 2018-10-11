-- // add nova situacao de revisita para atualizacacao
-- Migration SQL that makes the change goes here.
insert into cadastro.situacao_atlz_cadastral(siac_id, siac_dssituacao, siac_icuso, siac_tmultimaalteracao) values(11, 'REVISITA', 1, now());



-- //@UNDO
-- SQL to undo the change goes here.
delete from cadastro.situacao_atlz_cadastral where siac_dssituacao like 'REVISITA';

