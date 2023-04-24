-- // alter table imovel atlz cadastral leitura hidrometro
-- Migration SQL that makes the change goes here.

--ALTER TABLE cadastro.imovel_atlz_cadastral
--ADD COLUMN "imac_nnleiturahidrometro" VARCHAR(10); 

-- //@UNDO
-- SQL to undo the change goes here.

ALTER TABLE cadastro.imovel_atlz_cadastral DROP COLUMN imac_nnleiturahidrometro; 


