-- // adiciona campo indicador de desconto por faixa na rd
-- Migration SQL that makes the change goes here.

ALTER TABLE cobranca.resolucao_diretoria ADD COLUMN rdir_icdescontofaixarefconta integer;
UPDATE cobranca.resolucao_diretoria SET rdir_icdescontofaixarefconta = 2;

-- //@UNDO
-- SQL to undo the change goes here.

ALTER TABLE cobranca.resolucao_diretoria DROP COLUMN rdir_icdescontofaixarefconta;
