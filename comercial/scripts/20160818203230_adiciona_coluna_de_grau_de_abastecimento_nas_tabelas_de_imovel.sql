-- // adiciona coluna de grau de abastecimento nas tabelas de imovel
-- Migration SQL that makes the change goes here.

alter table cadastro.imovel 
  add column imov_percentual_abastecimento  smallint;

alter table cadastro.imovel_atlz_cadastral 
  add column imac_percentual_abastecimento  smallint;

alter table atualizacaocadastral.imovel_retorno
  add column imre_percentual_abastecimento  smallint;


COMMENT ON COLUMN cadastro.imovel.imov_percentual_abastecimento                     IS '25% | 50% | 75% | 100%';
COMMENT ON COLUMN cadastro.imovel_atlz_cadastral.imac_percentual_abastecimento      IS '25% | 50% | 75% | 100%';
COMMENT ON COLUMN atualizacaocadastral.imovel_retorno.imre_percentual_abastecimento IS '25% | 50% | 75% | 100%';

-- //@UNDO
-- SQL to undo the change goes here.

alter table cadastro.imovel 
  drop column imov_percentual_abastecimento;

alter table cadastro.imovel_atlz_cadastral 
  drop column imac_percentual_abastecimento;

alter table atualizacaocadastral.imovel_retorno
  drop column imre_percentual_abastecimento;
