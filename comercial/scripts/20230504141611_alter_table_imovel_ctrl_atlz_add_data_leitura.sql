-- // alter table imovel ctrl atlz add data leitura
-- Migration SQL that makes the change goes here.

ALTER TABLE cadastro.imovel_atlz_cadastral
ADD COLUMN "imac_dtleiturahidrometro" date; 

-- //@UNDO
-- SQL to undo the change goes here.

ALTER TABLE cadastro.imovel_atlz_cadastral DROP COLUMN imac_dtleiturahidrometro; 