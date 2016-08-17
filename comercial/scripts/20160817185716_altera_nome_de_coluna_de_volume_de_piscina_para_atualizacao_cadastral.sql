-- // altera nome de coluna de volume de piscina para atualizacao cadastral
-- Migration SQL that makes the change goes here.

alter table cadastro.imovel_atlz_cadastral
  rename imac_vopiscina to imac_vol_piscina;


-- //@UNDO
-- SQL to undo the change goes here.


alter table cadastro.imovel_atlz_cadastral
  rename imac_vol_piscina to imac_vopiscina;
