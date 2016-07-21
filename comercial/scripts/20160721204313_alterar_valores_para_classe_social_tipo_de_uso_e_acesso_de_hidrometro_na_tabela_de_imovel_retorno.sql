-- // alterar valores para classe social tipo de uso e acesso de hidrometro na tabela de imovel retorno
-- Migration SQL that makes the change goes here.

COMMENT ON COLUMN atualizacaocadastral.imovel_retorno.imre_classe_social                 IS '1 - Alta | 2 - Media | 3 - Baixa | 4 - Sub';
COMMENT ON COLUMN atualizacaocadastral.imovel_retorno.imre_tipo_uso                      IS '1 - dormitorio | 2 - morada | 3 - veraneio | 4 - outros';
COMMENT ON COLUMN atualizacaocadastral.imovel_retorno.imre_acesso_hidrometro             IS '1 - bom | 2 - ruim | 3 - sem';


-- //@UNDO
-- SQL to undo the change goes here.

COMMENT ON COLUMN atualizacaocadastral.imovel_retorno.imre_classe_social                 IS '0 - Alta | 1 - Media | 2 - Baixa | 3 - Sub';
COMMENT ON COLUMN atualizacaocadastral.imovel_retorno.imre_tipo_uso                      IS '0 - dormitorio | 1 - morada | 2 - veraneio | 3 - outros';
COMMENT ON COLUMN atualizacaocadastral.imovel_retorno.imre_acesso_hidrometro             IS '0 - bom | 1 - ruim | 2 - sem';

