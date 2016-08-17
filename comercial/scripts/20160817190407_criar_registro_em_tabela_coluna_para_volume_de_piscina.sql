-- // criar registro em tabela coluna para volume de piscina
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
  (select tabe_id from seguranca.tabela where tabe_nmtabela = 'cadastro.imovel_atlz_cadastral'), 
  now(), 
  'imac_vol_piscina', 
  'Volume da piscina', 
  2, 
  'VolPiscina' );

-- //@UNDO
-- SQL to undo the change goes here.

delete from seguranca.tabela_coluna where tbco_nmcoluna = 'imac_vol_piscina';
