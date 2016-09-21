-- // criar operacao para modulo desempenho
-- Migration SQL that makes the change goes here.

INSERT INTO seguranca.operacao VALUES (15053, 16032, 'Inserir Contrato de Medicao', 'InsContMed', '', '2016-08-31 11:54:16.156', NULL, NULL, 4, NULL, 2);
INSERT INTO seguranca.operacao VALUES (15054, 16033, 'Consultar Manter Contrato de Medicao', 'ConContMed', '', '2016-08-31 11:54:16.156', NULL, NULL, 6, NULL, 2);
INSERT INTO seguranca.operacao VALUES (15055, 16034, 'Inserir Acao', 'ConContMed', '', '2016-08-31 11:54:16.156', NULL, NULL, 4, NULL, 2);
INSERT INTO seguranca.operacao VALUES (15056, 16035, 'Consultar Manter Acao', 'ConManAcao', '', '2016-08-31 11:54:16.156', NULL, NULL, 6, NULL, 2);
INSERT INTO seguranca.operacao VALUES (15057, 16036, 'Arquivo de Retorno', 'ArqRet', '', '2016-08-31 11:54:16.156', NULL, NULL, 6, NULL, 2);
INSERT INTO seguranca.operacao VALUES (15058, 16037, 'Arquivo de Hidrometros', 'ArqHid', '', '2016-08-31 11:54:16.156', NULL, NULL, 6, NULL, 2);

-- //@UNDO
-- SQL to undo the change goes here.

delete from seguranca.operacao where oper_id in (15053, 15054, 15055, 15056, 15057, 15058);
