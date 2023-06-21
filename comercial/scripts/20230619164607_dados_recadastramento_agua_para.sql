-- // dados_recadastramento_agua_para
-- Migration SQL that makes the change goes here.

INSERT INTO seguranca.funcionalidade VALUES (nextval('seguranca.seq_funcionalidade'), 1, 'Dados Recadastramento Água Pará', now(), '/Gsan/Cadastro', 'dadosRecadastramentoAguaParaAction.do', 2, 'DaReAgPa', 1, 2, 2, 10);
INSERT INTO seguranca.operacao VALUES (nextval('seguranca.seq_operacao'), 16112, 'Dados Recadastramento Água Pará', 'DaReAgPa', 'dadosRecadastramentoAguaParaAction.do', now(), NULL, NULL, 1, NULL, 2);
INSERT INTO seguranca.grupo_func_operacao VALUES (1, 15127, 16112, now());

-- //@UNDO
-- SQL to undo the change goes here.

DELETE from seguranca.grupo_func_opecao where oper_id = 15127 and fncd_id = 16112;
DELETE from seguranca.operacao where oper_id = 15127;
DELETE from seguranca.funcionalidade where fncd_id = 16112;
