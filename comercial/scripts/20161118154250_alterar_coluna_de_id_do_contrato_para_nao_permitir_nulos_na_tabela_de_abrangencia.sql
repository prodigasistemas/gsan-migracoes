-- // alterar coluna de id do contrato para nao permitir nulos na tabela de abrangencia
-- Migration SQL that makes the change goes here.

alter table desempenho.imovel_subcategoria_abrangencia
  alter column cmed_id SET NOT NULL;

-- //@UNDO
-- SQL to undo the change goes here.

alter table desempenho.imovel_subcategoria_abrangencia
  alter column cmed_id DROP NOT NULL;
