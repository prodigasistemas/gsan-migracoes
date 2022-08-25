-- // alter table nome arrecadador contrato convenio
-- Migration SQL that makes the change goes here.

ALTER TABLE arrecadacao.parametros_convenio RENAME TO arrecador_contrato_convenio;

-- //@UNDO
-- SQL to undo the change goes here.

ALTER TABLE arrecadacao.arrecador_contrato_convenio RENAME TO parametros_convenio;

