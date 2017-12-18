-- // Novas colunas - comando empresa cobranca
-- Migration SQL that makes the change goes here.

ALTER TABLE cobranca.cmd_empr_cobr_conta ADD COLUMN cecc_qtdcontas integer;
ALTER TABLE cobranca.cmd_empr_cobr_conta ADD COLUMN cecc_qtdclientes integer;
ALTER TABLE cobranca.cmd_empr_cobr_conta ADD COLUMN cecc_vltotal numeric(13,2);

UPDATE batch.processo_funcionalidade SET prfn_nnsequencialexecucao = 2 WHERE proc_id = 156 and fncd_id = 1159;
UPDATE batch.processo_funcionalidade SET proc_id = 156 WHERE proc_id = 152 and fncd_id = 1158;

-- //@UNDO
-- SQL to undo the change goes here.

ALTER TABLE cobranca.cmd_empr_cobr_conta DROP COLUMN cecc_qtdcontas;
ALTER TABLE cobranca.cmd_empr_cobr_conta DROP COLUMN cecc_qtdclientes;
ALTER TABLE cobranca.cmd_empr_cobr_conta DROP COLUMN cecc_vltotal;

UPDATE batch.processo_funcionalidade SET prfn_nnsequencialexecucao = 1 WHERE proc_id = 156 and fncd_id = 1159;
UPDATE batch.processo_funcionalidade SET proc_id = 152 WHERE proc_id = 156 and fncd_id = 1158;

