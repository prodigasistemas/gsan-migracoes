-- // criar funcionalidaes para modulo desempenho
-- Migration SQL that makes the change goes here.

INSERT INTO seguranca.funcionalidade 
VALUES (16032, 13, 'Inserir Contrato de Medicao', '2016-08-31 00:00:00', '', NULL, 2, 'InsCont', 0, 2, 2, 146, 'http://hdesempenho.cosanpa.pa.gov.br/contrato_medicoes/new');

INSERT INTO seguranca.funcionalidade 
VALUES (16033, 13, 'Manter Contrato de Medicao', '2016-08-31 00:00:00', '', NULL, 2, 'MantCont', 0, 2, 2, 146, 'http://hdesempenho.cosanpa.pa.gov.br/contrato_medicoes');

INSERT INTO seguranca.funcionalidade 
VALUES (16034, 13, 'Inserir Acao', '2016-08-31 00:00:00', '', NULL, 2, 'InsAcao', 0, 2, 2, 147, 'http://hdesempenho.cosanpa.pa.gov.br/acoes/new');

INSERT INTO seguranca.funcionalidade 
VALUES (16035, 13, 'Manter Acao', '2016-08-31 00:00:00', '', NULL, 2, 'MantAcao', 0, 2, 2, 147, 'http://hdesempenho.cosanpa.pa.gov.br/acoes/');

INSERT INTO seguranca.funcionalidade 
VALUES (16036, 13, 'Arquivo de Retorno', '2016-08-31 00:00:00', '', NULL, 2, 'ArqRet', 0, 2, 2, NULL, 'http://hdesempenho.cosanpa.pa.gov.br/imovel_retorno');

INSERT INTO seguranca.funcionalidade 
VALUES (16037, 13, 'Arquivo de Hidrometros', '2016-08-31 00:00:00', '', NULL, 2, 'ArqHid', 0, 2, 2, NULL, 'http://hdesempenho.cosanpa.pa.gov.br/hidrometro_instalacao_historicos/new');

-- //@UNDO
-- SQL to undo the change goes here.

delete from seguranca.funcionalidade where fncd_id in (16032,16033,16034,16035, 16036, 16037);
