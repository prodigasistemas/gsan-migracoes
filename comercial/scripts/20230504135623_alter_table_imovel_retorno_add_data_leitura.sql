-- // alter table imovel retorno add data leitura
-- Migration SQL that makes the change goes here.

ALTER TABLE atualizacaocadastral.imovel_retorno
ADD COLUMN "imre_dtleiturahidrometro" date; 

-- //@UNDO
-- SQL to undo the change goes here.

ALTER TABLE atualizacaocadastral.imovel_retorno DROP COLUMN imre_dtleiturahidrometro; 
