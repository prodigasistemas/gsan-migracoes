-- // Novas Colunas Imovel ImovelHistorico ImovelRetorno - ObservacaoCategoria
-- Migration SQL that makes the change goes here.
ALTER TABLE cadastro.imovel ADD COLUMN imov_dsobservacaotegoria VARCHAR(100);

ALTER TABLE atualizacaocadastral.imovel_retorno ADD COLUMN imre_dsobservacaotegoria VARCHAR(100);

-- //@UNDO
-- SQL to undo the change goes here.

ALTER TABLE  cadastro.imovel DROP COLUMN  imov_dsobservacaotegoria;

ALTER TABLE atualizacaocadastral.imovel_retorno DROP COLUMN  imre_dsobservacaotegoria;
~


