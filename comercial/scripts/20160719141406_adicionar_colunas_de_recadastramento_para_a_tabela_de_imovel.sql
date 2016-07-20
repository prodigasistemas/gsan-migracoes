-- // adicionar colunas de recadastramento para a tabela de imovel
-- Migration SQL that makes the change goes here.

alter table cadastro.imovel 
  add column imov_ocupacao_imovel               smallint,
  add column imov_classe_social                 smallint,
  add column imov_quantidade_animais_domesticos smallint,
  add column imov_vol_cisterna                  numeric(5,2),
  add column imov_vol_cx_dagua                  numeric(5,2),
  add column imov_tipo_uso                      smallint,
  add column imov_acesso_hidrometro             smallint;



COMMENT ON COLUMN cadastro.imovel.imov_ocupacao_imovel               IS '0 - Criancas | 1 - Adultos | 2 - Alunos | 3 - Idosos | 4 - Caes | 5 - Empregados | 6 - Outros';
COMMENT ON COLUMN cadastro.imovel.imov_classe_social                 IS '0 - Alta | 1 - Media | 2 - Baixa | 3 - Sub';
COMMENT ON COLUMN cadastro.imovel.imov_quantidade_animais_domesticos IS 'Quantidade de animais domesticos no imovel';
COMMENT ON COLUMN cadastro.imovel.imov_vol_cisterna                  IS 'Volume da cisterna';
COMMENT ON COLUMN cadastro.imovel.imov_vol_cx_dagua                  IS 'Volume da caixa de agua';
COMMENT ON COLUMN cadastro.imovel.imov_tipo_uso                      IS '0 - dormitorio | 1 - morada | 2 - veraneio | 3 - outros';
COMMENT ON COLUMN cadastro.imovel.imov_acesso_hidrometro             IS '0 - bom | 1 - ruim | 2 - sem';
-- //@UNDO
-- SQL to undo the change goes here.

alter table cadastro.imovel 
  drop column imov_ocupacao_imovel               ,
  drop column imov_classe_social                 ,
  drop column imov_quantidade_animais_domesticos ,
  drop column imov_vol_cisterna                  ,
  drop column imov_vol_cx_dagua                  ,
  drop column imov_tipo_uso                      ,
  drop column imov_acesso_hidrometro             ;
