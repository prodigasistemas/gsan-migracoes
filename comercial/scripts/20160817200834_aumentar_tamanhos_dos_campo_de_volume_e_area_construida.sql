-- // aumentar tamanhos dos campo de volume e area construida
-- Migration SQL that makes the change goes here.

alter table cadastro.imovel
  alter column imov_vopiscina        TYPE numeric(10,2),
  alter column imov_nnareaconstruida TYPE numeric(10,2),
  alter column imov_vol_cisterna     TYPE numeric(10,2),
  alter column imov_vol_cx_dagua     TYPE numeric(10,2);

alter table cadastro.imovel_atlz_cadastral
  alter column imac_vol_piscina      TYPE numeric(10,2),
  alter column imac_nnareaconstruida TYPE numeric(10,2),
  alter column imac_vol_cisterna     TYPE numeric(10,2),
  alter column imac_vol_cx_dagua     TYPE numeric(10,2);


alter table atualizacaocadastral.imovel_retorno
  alter column imre_volumepiscina  TYPE numeric(10,2),
  alter column imre_areaconstruida TYPE numeric(10,2),
  alter column imre_vol_cisterna   TYPE numeric(10,2),
  alter column imre_vol_cx_dagua   TYPE numeric(10,2);

-- //@UNDO
-- SQL to undo the change goes here.
