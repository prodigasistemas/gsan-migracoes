-- // exibir_imagem_recadastramento_agua_para
-- Migration SQL that makes the change goes here.

INSERT INTO seguranca.funcionalidade VALUES (nextval('seguranca.seq_funcionalidade'), 1, 'Exibir Imagem Recadastramento Agua Para', now(), '/Gsan/Cadastro', 'exibirImagemRecadastramentoAguaParaAction.do', 2, 'ExImgReAP', 1, 2, 2, 10);
INSERT INTO seguranca.operacao VALUES (nextval('seguranca.seq_operacao'), 16113, 'Exibir Imagem Recadastramento Agua Para', 'ExImgReAP', 'exibirImagemRecadastramentoAguaParaAction.do', now(), NULL, NULL, 4, NULL, 2);
INSERT INTO seguranca.grupo_func_operacao VALUES (1, 15128, 16113, now());

-- //@UNDO
-- SQL to undo the change goes here.

DELETE from seguranca.grupo_func_opecao where oper_id = 15128 and fncd_id = 16113;
DELETE from seguranca.operacao where oper_id = 15128;
DELETE from seguranca.funcionalidade where fncd_id = 16113;
