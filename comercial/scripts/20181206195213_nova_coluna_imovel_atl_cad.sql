-- // nova coluna imovel atl cad
-- Migration SQL that makes the change goes here.
ALTER TABLE cadastro.imovel_atlz_cadastral ADD COLUMN imac_dsobservacaotegoria VARCHAR(100);

-- //@UNDO
-- SQL to undo the change goes here.

ALTER TABLE  cadastro.imovel_atlz_cadastral DROP COLUMN  imac_dsobservacaotegoria;

