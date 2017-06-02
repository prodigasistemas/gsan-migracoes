-- // Adicionar coluna data vencimento negociacoes cobranca empresa
-- Migration SQL that makes the change goes here.

alter table cobranca.negociacao_cobranca_empresa add column ncem_dtvencimento timestamp;

-- //@UNDO
-- SQL to undo the change goes here.

alter table cobranca.negociacao_cobranca_empresa drop column ncem_dtvencimento;

