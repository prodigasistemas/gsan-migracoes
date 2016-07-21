-- // adicionar colunas na tabela de retorno de imovel
-- Migration SQL that makes the change goes here.

alter table atualizacaocadastral.imovel_retorno 
  add column imre_classe_social                 smallint,
  add column imre_quantidade_animais_domesticos smallint,
  add column imre_vol_cisterna                  numeric(5,2),
  add column imre_vol_cx_dagua                  numeric(5,2),
  add column imre_tipo_uso                      smallint,
  add column imre_acesso_hidrometro             smallint;



COMMENT ON COLUMN atualizacaocadastral.imovel_retorno.imre_classe_social                 IS '0 - Alta | 1 - Media | 2 - Baixa | 3 - Sub';
COMMENT ON COLUMN atualizacaocadastral.imovel_retorno.imre_quantidade_animais_domesticos IS 'Quantidade de animais domesticos no imovel';
COMMENT ON COLUMN atualizacaocadastral.imovel_retorno.imre_vol_cisterna                  IS 'Volume da cisterna';
COMMENT ON COLUMN atualizacaocadastral.imovel_retorno.imre_vol_cx_dagua                  IS 'Volume da caixa de agua';
COMMENT ON COLUMN atualizacaocadastral.imovel_retorno.imre_tipo_uso                      IS '0 - dormitorio | 1 - morada | 2 - veraneio | 3 - outros';
COMMENT ON COLUMN atualizacaocadastral.imovel_retorno.imre_acesso_hidrometro             IS '0 - bom | 1 - ruim | 2 - sem';
-- //@UNDO
-- SQL to undo the change goes here.

alter table atualizacaocadastral.imovel_retorno 
  drop column imre_classe_social                 ,
  drop column imre_quantidade_animais_domesticos ,
  drop column imre_vol_cisterna                  ,
  drop column imre_vol_cx_dagua                  ,
  drop column imre_tipo_uso                      ,
  drop column imre_acesso_hidrometro             ;
