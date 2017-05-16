-- // deletar colunas em ComandoEmpresaCobrancaConta
-- Migration SQL that makes the change goes here.

ALTER TABLE cobranca.cmd_empr_cobr_conta DROP COLUMN uneg_id;
ALTER TABLE cobranca.cmd_empr_cobr_conta DROP COLUMN greg_id;
ALTER TABLE cobranca.cmd_empr_cobr_conta DROP COLUMN iper_id;
ALTER TABLE cobranca.cmd_empr_cobr_conta DROP COLUMN last_id;

-- //@UNDO
-- SQL to undo the change goes here.

ALTER TABLE cobranca.cmd_empr_cobr_conta ADD COLUMN uneg_id integer;
ALTER TABLE cobranca.cmd_empr_cobr_conta ADD COLUMN greg_id integer;
ALTER TABLE cobranca.cmd_empr_cobr_conta ADD COLUMN iper_id integer;
ALTER TABLE cobranca.cmd_empr_cobr_conta ADD COLUMN last_id integer;