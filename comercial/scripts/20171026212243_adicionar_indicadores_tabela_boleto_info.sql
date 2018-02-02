-- // adicionar indicadores tabela boleto info
-- Migration SQL that makes the change goes here.
ALTER TABLE arrecadacao.boleto_info ADD COLUMN boin_icgeradogsan smallint;
ALTER TABLE arrecadacao.boleto_info ADD COLUMN boin_icregistradobanco smallint;
ALTER TABLE arrecadacao.boleto_info ADD COLUMN boin_dtregistrobanco timestamp;
ALTER TABLE arrecadacao.boleto_info ADD COLUMN boin_icexclusaobanco smallint;
ALTER TABLE arrecadacao.boleto_info ADD COLUMN boin_dtexclusaobanco timestamp;

-- //@UNDO
-- SQL to undo the change goes here.
ALTER TABLE arrecadacao.boleto_info DROP COLUMN boin_icgeradogsan;
ALTER TABLE arrecadacao.boleto_info DROP COLUMN boin_icregistradobanco;
ALTER TABLE arrecadacao.boleto_info DROP COLUMN boin_dtregistrobanco;
ALTER TABLE arrecadacao.boleto_info DROP COLUMN boin_icexclusaobanco;
ALTER TABLE arrecadacao.boleto_info DROP COLUMN boin_dtexclusaobanco;