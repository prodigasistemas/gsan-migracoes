-- Migration SQL that makes the change goes here.

alter table faturamento.receitas_a_faturar_resumo
  add column catg_id integer;

COMMENT ON COLUMN faturamento.receitas_a_faturar_resumo.catg_id       IS 'Id da categoria o imovel';

ALTER TABLE faturamento.receitas_a_faturar_resumo
ADD CONSTRAINT fk1_receitas_a_faturar_resumo FOREIGN KEY (catg_id)
      REFERENCES cadastro.categoria (catg_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT

-- //@UNDO
-- SQL to undo the change goes here.

alter table faturamento.receitas_a_faturar_resumo
  drop column catg_id;