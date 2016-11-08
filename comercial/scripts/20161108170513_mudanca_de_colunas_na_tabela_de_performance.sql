-- // mudanca de colunas na tabela de performance
-- Migration SQL that makes the change goes here.

alter table desempenho.medicao_performance
  rename column medp_vldifconsumoagua   to medp_vldiferencaagua;
alter table desempenho.medicao_performance
  rename column medp_vldifconsumoesgoto to medp_vlaguafaturado;
alter table desempenho.medicao_performance  
  drop   column medp_pcconsumoesgoto;
alter table desempenho.medicao_performance  
  add    column medp_vlaguafaturadomeszero numeric(13,2);
alter table desempenho.medicao_performance  
  alter  column dcst_id SET NOT NULL;



-- //@UNDO
-- SQL to undo the change goes here.


alter table desempenho.medicao_performance
  rename column medp_vldiferencaagua TO medp_vldifconsumoagua;
alter table desempenho.medicao_performance
  rename column medp_vlaguafaturado  TO medp_vldifconsumoesgoto;
alter table desempenho.medicao_performance
  add    column medp_pcconsumoesgoto numeric(5,2);
alter table desempenho.medicao_performance
  drop   column medp_vlaguafaturadomeszero;
alter table desempenho.medicao_performance
  alter  column dcst_id DROP NOT NULL;
