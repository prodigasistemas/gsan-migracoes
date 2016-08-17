-- // adicionar campo de area construida e volume de piscina em imovel retorno
-- Migration SQL that makes the change goes here.

alter table atualizacaocadastral.imovel_retorno
  add column imre_areaconstruida numeric(8,2),
  add column imre_volumepiscina numeric(5,2);

COMMENT ON COLUMN atualizacaocadastral.imovel_retorno.imre_areaconstruida  IS 'Area construida';
COMMENT ON COLUMN atualizacaocadastral.imovel_retorno.imre_volumepiscina   IS 'Volume da piscina';


-- //@UNDO
-- SQL to undo the change goes here.


alter table atualizacaocadastral.imovel_retorno
  drop column imre_areaconstruida,
  drop column imre_volumepiscina;
