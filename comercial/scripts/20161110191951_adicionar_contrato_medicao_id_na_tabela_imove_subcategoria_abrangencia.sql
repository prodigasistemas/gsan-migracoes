-- // adicionar_contrato_medicao_id_na_tabela_imove_subcategoria_abrangencia
-- Migration SQL that makes the change goes here.
alter table desempenho.imovel_subcategoria_abrangencia
  add column cmed_id integer;

COMMENT ON COLUMN desempenho.imovel_subcategoria_abrangencia.cmed_id  IS 'id de relacionamento com Contrato Medicao';

ALTER TABLE desempenho.imovel_subcategoria_abrangencia
ADD CONSTRAINT fk2_imovel_subcategoria_abrangencia FOREIGN KEY (cmed_id)
      REFERENCES desempenho.contrato_medicao (cmed_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT

-- //@UNDO
-- SQL to undo the change goes here.
alter table desempenho.imovel_subcategoria_abrangencia
  drop column cmed_id;

