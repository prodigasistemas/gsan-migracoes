-- // inserir_campo_desconto_faixa_na_tabela_parcelamento
-- Migration SQL that makes the change goes here.

ALTER TABLE cobranca.parcelamento ADD COLUMN parc_vldescontofaixa numeric(13,2);

-- //@UNDO
-- SQL to undo the change goes here.

ALTER TABLE cobranca.parcelamento DROP COLUMN parc_vldescontofaixa;
