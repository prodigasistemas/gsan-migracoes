-- // alter table imovel retorno leitura hidrometro
-- Migration SQL that makes the change goes here.

--ALTER TABLE atualizacaocadastral.imovel_retorno
--ADD COLUMN "imre_nnleiturahidrometro" VARCHAR(10); 

-- //@UNDO
-- SQL to undo the change goes here.

ALTER TABLE atualizacaocadastral.imovel_retorno DROP COLUMN imre_nnleiturahidrometro; 