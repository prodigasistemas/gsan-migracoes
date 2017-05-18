-- // adicionar_coluna_debitos_preteritos_comando_cobranca_por_resultado
-- Migration SQL that makes the change goes here.

alter table cobranca.cmd_empr_cobr_conta add column cecc_icdebitopreterito smallint;


-- //@UNDO
-- SQL to undo the change goes here.


alter table cobranca.cmd_empr_cobr_conta drop column cecc_icdebitopreterito;
