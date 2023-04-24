-- // alter table aumentando varchar nas tabelas controle e retorno
-- Migration SQL that makes the change goes here.

ALTER TABLE cadastro.imovel_atlz_cadastral ALTER COLUMN imac_dsoutrasinformacoes TYPE varchar(300) USING imac_dsoutrasinformacoes::varchar;

ALTER TABLE cadastro.imovel_atlz_cadastral ALTER COLUMN imac_dsobservacaotegoria TYPE varchar(300) USING imac_dsoutrasinformacoes::varchar;

ALTER TABLE atualizacaocadastral.imovel_retorno ALTER COLUMN imac_dsoutrasinformacoes TYPE varchar(300) USING imac_dsoutrasinformacoes::varchar;

ALTER TABLE atualizacaocadastral.imovel_retorno ALTER COLUMN imre_dsobservacaotegoria TYPE varchar(300) USING imac_dsoutrasinformacoes::varchar;



-- //@UNDO
-- SQL to undo the change goes here.

ALTER TABLE cadastro.imovel_atlz_cadastral ALTER COLUMN imac_dsoutrasinformacoes TYPE varchar(200) USING imac_dsoutrasinformacoes::varchar;

ALTER TABLE cadastro.imovel_atlz_cadastral ALTER COLUMN imac_dsobservacaotegoria TYPE varchar(100) USING imac_dsoutrasinformacoes::varchar;

ALTER TABLE atualizacaocadastral.imovel_retorno ALTER COLUMN imac_dsoutrasinformacoes TYPE varchar(200) USING imac_dsoutrasinformacoes::varchar;

ALTER TABLE atualizacaocadastral.imovel_retorno ALTER COLUMN imre_dsobservacaotegoria TYPE varchar(100) USING imac_dsoutrasinformacoes::varchar;


