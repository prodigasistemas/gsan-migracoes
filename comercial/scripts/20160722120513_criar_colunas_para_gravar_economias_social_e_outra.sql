alter table cadastro.imovel 
  add column imov_qtd_economias_social integer,
  add column imov_qtd_economias_outra  integer;

alter table cadastro.imovel_atlz_cadastral 
  add column imac_qtd_economias_social integer,
  add column imac_qtd_economias_outra  integer;

alter table atualizacaocadastral.imovel_retorno 
  add column imre_qtd_economias_social integer,
  add column imre_qtd_economias_outra  integer;

COMMENT ON COLUMN cadastro.imovel.imov_qtd_economias_social  IS 'Quantidade de economias para social';
COMMENT ON COLUMN cadastro.imovel.imov_qtd_economias_outra   IS 'Quantidade de economias para outra';

COMMENT ON COLUMN cadastro.imovel_atlz_cadastral.imac_qtd_economias_social  IS 'Quantidade de economias para social';
COMMENT ON COLUMN cadastro.imovel_atlz_cadastral.imac_qtd_economias_outra   IS 'Quantidade de economias para outra';

COMMENT ON COLUMN atualizacaocadastral.imovel_retorno.imre_qtd_economias_social  IS 'Quantidade de economias para social';
COMMENT ON COLUMN atualizacaocadastral.imovel_retorno.imre_qtd_economias_outra   IS 'Quantidade de economias para outra';

-- //@UNDO
-- SQL to undo the change goes here.

alter table cadastro.imovel 
  drop column imov_qtd_economias_social   ,
  drop column imov_qtd_economias_outra    ;

alter table cadastro.imovel_atlz_cadastral 
  drop column imac_qtd_economias_social   ,
  drop column imac_qtd_economias_outra    ;

alter table atualizacaocadastral.imovel_retorno 
  drop column imre_qtd_economias_social   ,
  drop column imre_qtd_economias_outra    ;    