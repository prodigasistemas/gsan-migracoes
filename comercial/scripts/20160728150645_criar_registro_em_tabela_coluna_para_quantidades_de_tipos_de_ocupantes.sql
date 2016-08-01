-- // criar registro em tabela coluna para quantidades de tipos de ocupantes
-- Migration SQL that makes the change goes here.

insert into seguranca.tabela_coluna ( 
  tbco_id, 
  tabe_id, 
  tbco_tmultimaalteracao, 
  tbco_nmcoluna, 
  tbco_dscoluna, 
  tbco_icprimarykey, 
  tbco_nmabreviado) 
values (
  nextval('seguranca.seq_tabela_coluna'),
  (select tabe_id from seguranca.tabela where tabe_nmtabela = 'cadastro.imovel_tipo_ocupante_quantidade_atualizacao_cadastral'), 
  now(), 
  'itqa_quantidade', 
  'Qtd de ocupantes de um tipo', 
  2, 
  'QtdTipoOcu' );

-- //@UNDO
-- SQL to undo the change goes here.

delete from seguranca.tabela_coluna where tbco_nmcoluna = 'itqa_quantidade';
