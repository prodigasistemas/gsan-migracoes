-- // add campos imovel controle atlz cad
-- Migration SQL that makes the change goes here.

ALTER TABLE atualizacaocadastral.imovel_controle_atlz_cad ADD COLUMN icac_lote integer;
COMMENT ON COLUMN atualizacaocadastral.imovel_controle_atlz_cad.icac_lote IS 'identificacao do lote ao qual o imovel pertence';

ALTER TABLE atualizacaocadastral.imovel_controle_atlz_cad ADD COLUMN icac_tmgeracaolote timestamp without time zone;
COMMENT ON COLUMN atualizacaocadastral.imovel_controle_atlz_cad.icac_tmgeracaolote IS 'timestamp de quando foi gerado o lote';

ALTER TABLE atualizacaocadastral.imovel_controle_atlz_cad ADD COLUMN icac_tmaprovacaolote timestamp without time zone;
COMMENT ON COLUMN atualizacaocadastral.imovel_controle_atlz_cad.icac_tmaprovacaolote IS 'timestamp de quando foi aprovado o lote';

-- //@UNDO
-- SQL to undo the change goes here.

ALTER TABLE atualizacaocadastral.imovel_controle_atlz_cad DROP COLUMN icac_lote;

ALTER TABLE atualizacaocadastral.imovel_controle_atlz_cad DROP COLUMN icac_tmgeracaolote;

ALTER TABLE atualizacaocadastral.imovel_controle_atlz_cad DROP COLUMN icac_tmaprovacaolote;
