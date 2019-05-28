-- // Add coluna quantidadeDiasLiberacaoProcessamento na tabela Sistema Parametros
-- Migration SQL that makes the change goes here.

alter table cadastro.sistema_parametros add column parm_qtddiasliberacaoproc integer;

-- //@UNDO
-- SQL to undo the change goes here.


alter table cadastro.sistema_parametros drop column parm_qtddiasliberacaoproc;