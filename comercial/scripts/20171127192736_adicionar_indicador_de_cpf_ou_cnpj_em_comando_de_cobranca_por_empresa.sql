-- // adicionar indicador de cpf ou cnpj em comando de cobranca por empresa
-- Migration SQL that makes the change goes here.

ALTER TABLE cobranca.cmd_empr_cobr_conta ADD COLUMN cecc_icpossuicpfcnpj smallint;

-- //@UNDO
-- SQL to undo the change goes here.

ALTER TABLE cobranca.cmd_empr_cobr_conta DROP COLUMN cecc_icpossuicpfcnpj;
