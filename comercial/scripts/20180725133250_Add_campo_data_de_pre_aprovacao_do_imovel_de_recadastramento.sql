-- // Add campo data de pre aprovacao do imovel de recadastramento
-- Migration SQL that makes the change goes here.


alter table atualizacaocadastral.imovel_controle_atlz_cad add column icac_tmpreaprovacao timestamp default null; 

-- //@UNDO
-- SQL to undo the change goes here.

alter table atualizacaocadastral.imovel_controle_atlz_cad drop column icac_tmpreaprovacao; 

