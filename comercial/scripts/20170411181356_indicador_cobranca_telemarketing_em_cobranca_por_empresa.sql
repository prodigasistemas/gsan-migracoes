-- // indicador cobranca telemarketing em cobranca por empresa
-- Migration SQL that makes the change goes here.

ALTER TABLE cobranca.cmd_empr_cobr_conta ADD COLUMN cecc_iccobrancatelemarketing SMALLINT NOT NULL DEFAULT 2;

-- //@UNDO
-- SQL to undo the change goes here.

ALTER TABLE cobranca.cmd_empr_cobr_conta DROP COLUMN cecc_iccobrancatelemarketing;
