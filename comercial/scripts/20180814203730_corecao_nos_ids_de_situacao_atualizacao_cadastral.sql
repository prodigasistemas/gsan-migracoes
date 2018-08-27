-- // corecao nos ids de situacao atualizacao cadastral
-- Migration SQL that makes the change goes here.

update cadastro.situacao_atlz_cadastral set siac_dssituacao = 'EM_REVISAO' where siac_id = 8;
update cadastro.situacao_atlz_cadastral set siac_dssituacao = 'REVISADO' where siac_id = 9;

-- //@UNDO
-- SQL to undo the change goes here.


