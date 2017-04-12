-- // Remover quadra inicial e final de ComandoEmpresaCobrancaConta
-- Migration SQL that makes the change goes here.


ALTER TABLE cobranca.cmd_empr_cobr_conta DROP COLUMN qdra_idinicial;
ALTER TABLE cobranca.cmd_empr_cobr_conta DROP COLUMN qdra_idfinal;

-- //@UNDO
-- SQL to undo the change goes here.


ALTER TABLE cobranca.cmd_empr_cobr_conta ADD COLUMN qdra_idinicial integer;
ALTER TABLE cobranca.cmd_empr_cobr_conta ADD CONSTRAINT fk9_cmd_empr_cobr_conta FOREIGN KEY (qdra_idinicial) REFERENCES cadastro.quadra (qdra_id) MATCH SIMPLE ON UPDATE RESTRICT ON DELETE RESTRICT;
ALTER TABLE cobranca.cmd_empr_cobr_conta ADD COLUMN qdra_idfinal integer;
ALTER TABLE cobranca.cmd_empr_cobr_conta ADD CONSTRAINT fk10_cmd_empr_cobr_conta FOREIGN KEY (qdra_idfinal) REFERENCES cadastro.quadra (qdra_id) MATCH SIMPLE ON UPDATE RESTRICT ON DELETE RESTRICT;
