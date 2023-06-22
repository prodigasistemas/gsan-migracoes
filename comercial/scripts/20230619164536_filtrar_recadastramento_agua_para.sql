-- // filtrar_recadastramento_agua_para
-- Migration SQL that makes the change goes here.

INSERT INTO seguranca.funcionalidade VALUES (nextval('seguranca.seq_funcionalidade'), 1, 'Filtrar Recadastramento Água Pará', now(), '/Gsan/Cadastro', 'filtrarRecadastramentoAguaParaAction.do', 2, 'FrReAgPa', 1, 2, 2, 10);
INSERT INTO seguranca.operacao VALUES (nextval('seguranca.seq_operacao'), 16111, 'Filtrar Recadastramento Água Pará', 'FrReAgPa', 'filtrarRecadastramentoAguaParaAction.do', now(), NULL, NULL, 1, NULL, 2);
INSERT INTO seguranca.grupo_func_operacao VALUES (1, 15126, 16111, now());

-- //@UNDO
-- SQL to undo the change goes here.

DELETE from seguranca.grupo_func_opecao where oper_id = 15126 and fncd_id = 16111;
DELETE from seguranca.operacao where oper_id = 15126;
DELETE from seguranca.funcionalidade where fncd_id = 16111;
