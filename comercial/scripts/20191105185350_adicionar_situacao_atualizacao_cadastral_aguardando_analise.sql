-- // adicionar_situacao_atualizacao_cadastral_aguardando_analise
-- Migration SQL that makes the change goes here.

insert into cadastro.situacao_atlz_cadastral(siac_id, siac_dssituacao, siac_icuso, siac_tmultimaalteracao) values (15, 'AGUARDANDO ANALISE', 1, now());

-- //@UNDO
-- SQL to undo the change goes here.

delete from cadastro.situacao_atlz_cadastral where UPPER(siac_dssituacao) = 'AGUARDANDO ANALISE';
