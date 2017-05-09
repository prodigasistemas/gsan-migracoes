-- // quantidade maxima clientes em cobranca por empresa
-- Migration SQL that makes the change goes here.

ALTER TABLE cobranca.cmd_empr_cobr_conta ADD COLUMN cecc_qtdmaximaclientes INTEGER;

-- //@UNDO
-- SQL to undo the change goes here.

ALTER TABLE cobranca.cmd_empr_cobr_conta DROP COLUMN cecc_qtdmaximaclientes;
