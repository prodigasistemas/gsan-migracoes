-- // adicionar campo icac_tmpreaprovacao em imovel controle atualizacao cadastral
-- Migration SQL that makes the change goes here.

ALTER TABLE atualizacaocadastral.imovel_controle_atlz_cad ADD COLUMN icac_tmpreaprovacao timestamp without time zone;

-- //@UNDO
-- SQL to undo the change goes here.

ALTER TABLE atualizacaocadastral.imovel_controle_atlz_cad DROP COLUMN icac_tmpreaprovacao;
