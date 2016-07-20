-- // adicionar colunas de recadastramento para a tabela de atualizacao cadastral de imovel
-- Migration SQL that makes the change goes here.

alter table cadastro.imovel_atlz_cadastral 
  add column imac_ocupacao_imovel               smallint,
  add column imac_classe_social                 smallint,
  add column imac_quantidade_animais_domesticos smallint,
  add column imac_vol_cisterna                  numeric(5,2),
  add column imac_vol_cx_dagua                  numeric(5,2),
  add column imac_tipo_uso                      smallint,
  add column imac_acesso_hidrometro             smallint;

COMMENT ON COLUMN cadastro.imovel_atlz_cadastral.imac_ocupacao_imovel               IS '0 - Criancas | 1 - Adultos | 2 - Alunos | 3 - Idosos | 4 - Caes | 5 - Empregados | 6 - Outros';
COMMENT ON COLUMN cadastro.imovel_atlz_cadastral.imac_classe_social                 IS '0 - Alta | 1 - Media | 2 - Baixa | 3 - Sub';
COMMENT ON COLUMN cadastro.imovel_atlz_cadastral.imac_quantidade_animais_domesticos IS 'Quantidade de animais domesticos no imovel';
COMMENT ON COLUMN cadastro.imovel_atlz_cadastral.imac_vol_cisterna                  IS 'Volume da cisterna';
COMMENT ON COLUMN cadastro.imovel_atlz_cadastral.imac_vol_cx_dagua                  IS 'Volume da caixa de agua';
COMMENT ON COLUMN cadastro.imovel_atlz_cadastral.imac_tipo_uso                      IS '0 - dormitorio | 1 - morada | 2 - veraneio | 3 - outros';
COMMENT ON COLUMN cadastro.imovel_atlz_cadastral.imac_acesso_hidrometro             IS '0 - bom | 1 - ruim | 2 - sem';
-- //@UNDO
-- SQL to undo the change goes here.

alter table cadastro.imovel_atlz_cadastral 
  drop column imac_ocupacao_imovel               ,
  drop column imac_classe_social                 ,
  drop column imac_quantidade_animais_domesticos ,
  drop column imac_vol_cisterna                  ,
  drop column imac_vol_cx_dagua                  ,
  drop column imac_tipo_uso                      ,
  drop column imac_acesso_hidrometro             ;
