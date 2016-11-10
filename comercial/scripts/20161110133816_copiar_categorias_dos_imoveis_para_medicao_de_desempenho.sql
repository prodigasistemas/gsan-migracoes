-- // copiar categorias dos imoveis para medicao de desempenho
-- Migration SQL that makes the change goes here.

insert into desempenho.imovel_subcategoria_abrangencia
(
  select nextval('desempenho.seq_imovel_subcategoria_abrangencia'), now(), now(), scat_id, imsb_qteconomia, imov.imov_id
  from cadastro.imovel imov
  inner join cadastro.imovel_subcategoria imsb on
  imsb.imov_id = imov.imov_id
  inner join desempenho.contrato_medicao_abrangencia cmab on
  cmab.imov_id = imov.imov_id
)


-- //@UNDO
-- SQL to undo the change goes here.

delete from desempenho.imovel_subcategoria_abrangencia;

alter sequence desempenho.seq_imovel_subcategoria_abrangencia restart with 1;
