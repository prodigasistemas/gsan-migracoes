-- // exibir_consulta_recadastramento_agua_para
-- Migration SQL that makes the change goes here.

INSERT INTO seguranca.funcionalidade VALUES (nextval('seguranca.seq_funcionalidade'), 1, 'Exibir Consultar Recadastramento Água Pará', now(), '/Gsan', 'exibirRecadastramentoAguaPara.do', 2, 'ExReAgPa', 1, 2, 2, 10);
INSERT INTO seguranca.operacao VALUES (nextval('seguranca.seq_operacao'), 16110, 'Exibir Consultar Recadastramento Água Pará', 'ExReAgPa', 'exibirRecadastramentoAguaPara.do', now(), NULL, NULL, 1, NULL, 2);
INSERT INTO seguranca.grupo_func_operacao VALUES (1, 15125, 16110, now());

-- //@UNDO
-- SQL to undo the change goes here.

DELETE from seguranca.grupo_func_opecao where oper_id = 15125 and fncd_id = 16110;
DELETE from seguranca.operacao where oper_id = 15125;
DELETE from seguranca.funcionalidade where fncd_id = 16110;
