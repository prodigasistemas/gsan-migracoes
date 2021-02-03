-- // alteracoes api ordem servico
-- Migration SQL that makes the change goes here.

-- Efetuar Religacao de Agua com Instalacao de Hidrometro
INSERT INTO seguranca.funcionalidade VALUES (16070, 6, 'Efetuar Religacao de Agua com Instalacao de Hidrometro', now(), 'Gsan/Atendimento ao Publico/Ligacao de Agua', 'exibirEfetuarReligacaoAguaComInstalacaoHidrometroAction.do', 1, 'REAGINHDT', 71, 2, 2, 31, null);

INSERT INTO seguranca.operacao VALUES (16044, 16070, 'Efetuar Religacao de Agua com Instalacao de Hidrometro', 'REAGINHDT', 'efetuarReligacaoAguaComInstalacaoHidrometroAction.do', now(), null, null, 3, 278, 1);		

INSERT INTO seguranca.grupo_func_operacao VALUES(1, 16044, 16070, now());
INSERT INTO seguranca.grupo_func_operacao VALUES(3, 16044, 16070, now());
INSERT INTO seguranca.grupo_func_operacao VALUES(11, 16044, 16070, now());
INSERT INTO seguranca.grupo_func_operacao VALUES(16, 16044, 16070, now());
INSERT INTO seguranca.grupo_func_operacao VALUES(20, 16044, 16070, now());
INSERT INTO seguranca.grupo_func_operacao VALUES(21, 16044, 16070, now());
INSERT INTO seguranca.grupo_func_operacao VALUES(34, 16044, 16070, now());
INSERT INTO seguranca.grupo_func_operacao VALUES(39, 16044, 16070, now());
INSERT INTO seguranca.grupo_func_operacao VALUES(42, 16044, 16070, now());
INSERT INTO seguranca.grupo_func_operacao VALUES(43, 16044, 16070, now());
INSERT INTO seguranca.grupo_func_operacao VALUES(46, 16044, 16070, now());
INSERT INTO seguranca.grupo_func_operacao VALUES(47, 16044, 16070, now());
INSERT INTO seguranca.grupo_func_operacao VALUES(48, 16044, 16070, now());
INSERT INTO seguranca.grupo_func_operacao VALUES(49, 16044, 16070, now());
INSERT INTO seguranca.grupo_func_operacao VALUES(50, 16044, 16070, now());
INSERT INTO seguranca.grupo_func_operacao VALUES(52, 16044, 16070, now());
INSERT INTO seguranca.grupo_func_operacao VALUES(53, 16044, 16070, now());
INSERT INTO seguranca.grupo_func_operacao VALUES(54, 16044, 16070, now());
INSERT INTO seguranca.grupo_func_operacao VALUES(55, 16044, 16070, now());
INSERT INTO seguranca.grupo_func_operacao VALUES(56, 16044, 16070, now());
INSERT INTO seguranca.grupo_func_operacao VALUES(58, 16044, 16070, now());
INSERT INTO seguranca.grupo_func_operacao VALUES(61, 16044, 16070, now());
INSERT INTO seguranca.grupo_func_operacao VALUES(62, 16044, 16070, now());
INSERT INTO seguranca.grupo_func_operacao VALUES(63, 16044, 16070, now());
INSERT INTO seguranca.grupo_func_operacao VALUES(67, 16044, 16070, now());
INSERT INTO seguranca.grupo_func_operacao VALUES(108, 16044, 16070, now());

-- Efetuar Ligacao de Agua com Substituicao de Hidrometro
INSERT INTO seguranca.operacao VALUES (16045, 204, 'Efetuar Ligacao de Agua com Substituicao de Hidrometro', 'LAGSUHDT', 'efetuarLigacaoAguaAction.do', now(), null, null, 12, 278, 1);		

-- Efetuar Religacao de Agua com Substituicao de Hidrometro
INSERT INTO seguranca.operacao VALUES (16046, 39, 'Efetuar Religacao de Agua com Substituicao de Hidrometro', 'RLASUHDT', 'efetuarReligacaoAguaAction.do', now(), null, null, 12, 278, 1);		

-- Efetuar Restabelecimento Ligacao Agua com Substituicao de Hidrometro
INSERT INTO seguranca.operacao VALUES (16047, 40, 'Efetuar Restabelecimento Ligacao Agua Subst Hidrometro', 'RESLASUHDT', 'efetuarRestabelecimentoLigacaoAguaAction.do', now(), null, null, 3, 278, 1);		

-- //@UNDO
-- SQL to undo the change goes here.

DELETE FROM seguranca.grupo_func_operacao WHERE fncd_id = 16070;
DELETE FROM seguranca.operacao WHERE oper_id IN (16044, 16045, 16046, 16047);
DELETE FROM seguranca.funcionalidade fncd_id = 16070;
