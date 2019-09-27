-- // Novos campos imovel - recadastramento
-- Migration SQL that makes the change goes here.

ALTER TABLE  cadastro.imovel_atlz_cadastral
    ADD COLUMN imac_qtd_nos_fundos integer, 
    ADD COLUMN imac_qtd_nos_altos integer, 
    ADD COLUMN imac_individualizacao integer;

ALTER TABLE  atualizacaocadastral.imovel_retorno
    ADD COLUMN imre_qtd_nos_fundos integer, 
    ADD COLUMN imre_qtd_nos_altos integer, 
    ADD COLUMN imre_individualizacao integer;

ALTER TABLE  cadastro.imovel
    ADD COLUMN imov_qtdnosfundos integer, 
    ADD COLUMN imov_qtdnosaltos integer, 
    ADD COLUMN imov_individualizacao integer;

-- //@UNDO
-- SQL to undo the change goes here.

ALTER TABLE  cadastro.imovel_atlz_cadastral
    DROP COLUMN imac_qtd_nos_fundos, 
    DROP COLUMN imac_qtd_nos_altos, 
    DROP COLUMN imac_individualizacao;

ALTER TABLE  atualizacaocadastral.imovel_retorno
    DROP COLUMN imre_qtd_nos_fundos, 
    DROP COLUMN imre_qtd_nos_altos, 
    DROP COLUMN imre_individualizacao;

ALTER TABLE  cadastro.imovel
    DROP COLUMN imov_qtdnosfundos, 
    DROP COLUMN imov_qtdnosaltos, 
    DROP COLUMN imov_individualizacao;