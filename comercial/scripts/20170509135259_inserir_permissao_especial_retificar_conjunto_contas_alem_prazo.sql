-- // inserir permissao especial 59
-- Migration SQL that makes the change goes here.

INSERT INTO seguranca.permissao_especial(pmep_id, pmep_dspermissaoespecial, pmep_icuso, pmep_tmultimaalteracao, oper_id)
VALUES (59,'RETIFICAR DATA VENCIMENTO ALEM PRAZO PADRAO',1,now(),1461);


-- //@UNDO
-- SQL to undo the change goes here.

DELETE FROM seguranca.permissao_especial WHERE pmep_id=59;
