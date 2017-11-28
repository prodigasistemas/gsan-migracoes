-- // adicionar data criacao boleto info
-- Migration SQL that makes the change goes here.
ALTER TABLE arrecadacao.boleto_info ADD COLUMN boin_dtcriacao timestamp;


-- //@UNDO
-- SQL to undo the change goes here.
ALTER TABLE arrecadacao.boleto_info DROP COLUMN boin_dtcriacao;

