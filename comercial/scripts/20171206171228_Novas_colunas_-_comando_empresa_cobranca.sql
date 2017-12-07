-- // Novas colunas - comando empresa cobranca
-- Migration SQL that makes the change goes here.

ALTER TABLE cobranca.cmd_empr_cobr_conta ADD COLUMN cecc_qtdcontas integer;
ALTER TABLE cobranca.cmd_empr_cobr_conta ADD COLUMN cecc_qtdclientes integer;
ALTER TABLE cobranca.cmd_empr_cobr_conta ADD COLUMN cecc_vltotal numeric(13,2);
ALTER TABLE cobranca.cmd_empr_cobr_conta ADD COLUMN cecc_dtcriacao date;

update batch.processo_funcionalidade set prfn_nnsequencialexecucao = 2 where proc_id = 156 and fncd_id = 1159;
update batch.processo_funcionalidade set proc_id = 156 where proc_id = 152 and fncd_id = 1158;


-- //@UNDO
-- SQL to undo the change goes here.

ALTER TABLE cobranca.cmd_empr_cobr_conta DROP COLUMN cecc_qtdcontas;
ALTER TABLE cobranca.cmd_empr_cobr_conta DROP COLUMN cecc_qtdclientes;
ALTER TABLE cobranca.cmd_empr_cobr_conta DROP COLUMN cecc_vltotal;
ALTER TABLE cobranca.cmd_empr_cobr_conta DROP COLUMN cecc_dtcriacao;

update batch.processo_funcionalidade set prfn_nnsequencialexecucao = 1 where proc_id = 156 and fncd_id = 1159;
update batch.processo_funcionalidade set proc_id = 152 where proc_id = 156 and fncd_id = 1158;

