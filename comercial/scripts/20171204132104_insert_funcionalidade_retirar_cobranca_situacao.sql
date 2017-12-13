-- // insert funcionalidade retirar cobranca situacao
-- Migration SQL that makes the change goes here.

INSERT INTO seguranca.funcionalidade
VALUES (16043, 3, 'Retirar Situacao de Cobranca por Empresa', now(), 'Gsan/Cobranca/Cobranca por Resultado', 'exibirRetirarSituacaoCobrancaAction.do', 1, 'ExRetStCb', 4, 2, 2, 141, null);

INSERT INTO seguranca.operacao 
VALUES (16039, 16043, 'Retirar Situacao de Cobranca por Empresa', 'RetSitCob', 'retirarSituacaoCobrancaAction.do', now(), null, null, 10, null, 2);

INSERT INTO seguranca.grupo_func_operacao VALUES (1, 16039, 16043, now());

-- //@UNDO
-- SQL to undo the change goes here.

DELETE FROM seguranca.grupo_func_operacao WHERE fncd_id = 16043 AND oper_id = 16039;

DELETE FROM seguranca.operacao WHERE oper_id = 16039;

DELETE FROM seguranca.funcionalidade WHERE fncd_id = 16043;