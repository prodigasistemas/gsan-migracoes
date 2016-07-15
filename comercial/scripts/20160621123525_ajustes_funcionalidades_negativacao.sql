-- // ajustes_funcionalidades_negativacao
-- Migration SQL that makes the change goes here.

UPDATE seguranca.funcionalidade SET modu_id=3, fncd_dsfuncionalidade='Inserir Negativador', fncd_tmultimaalteracao=now(), fncd_dscaminhomenu='Gsan/Cobranca/Negativacao', fncd_icpontoentrada=1, fncd_nnordemmenu=1, fncg_id=94 WHERE fncd_id = 856;
UPDATE seguranca.funcionalidade SET modu_id=3, fncd_dsfuncionalidade='Manter Negativador', fncd_tmultimaalteracao=now(), fncd_dscaminhomenu='Gsan/Cobranca/Negativacao', fncd_icpontoentrada=1, fncd_nnordemmenu=2, fncg_id=94 WHERE fncd_id = 857;
UPDATE seguranca.funcionalidade SET modu_id=3, fncd_dsfuncionalidade='Inserir Contrato do Negativador', fncd_tmultimaalteracao=now(), fncd_dscaminhomenu='Gsan/Cobranca/Negativacao', fncd_icpontoentrada=1, fncd_nnordemmenu=3, fncg_id=94 WHERE fncd_id = 855;
UPDATE seguranca.funcionalidade SET modu_id=3, fncd_dsfuncionalidade='Manter Contrato do Negativador', fncd_tmultimaalteracao=now(), fncd_dscaminhomenu='Gsan/Cobranca/Negativacao', fncd_icpontoentrada=1, fncd_nnordemmenu=4, fncg_id=94 WHERE fncd_id = 858;
UPDATE seguranca.funcionalidade SET modu_id=3, fncd_dsfuncionalidade='Inserir Tipo do Registro do Negativador', fncd_tmultimaalteracao=now(), fncd_dscaminhomenu='Gsan/Cobranca/Negativacao', fncd_icpontoentrada=1, fncd_nnordemmenu=5, fncg_id=94 WHERE fncd_id = 870;
UPDATE seguranca.funcionalidade SET modu_id=3, fncd_dsfuncionalidade='Manter Tipo do Registro do Negativador', fncd_tmultimaalteracao=now(), fncd_dscaminhomenu='Gsan/Cobranca/Negativacao', fncd_icpontoentrada=1, fncd_nnordemmenu=6, fncg_id=94 WHERE fncd_id = 871;
UPDATE seguranca.funcionalidade SET modu_id=3, fncd_dsfuncionalidade='Inserir Motivo de Retorno do Registro do Negativador', fncd_tmultimaalteracao=now(), fncd_dscaminhomenu='Gsan/Cobranca/Negativacao', fncd_icpontoentrada=1, fncd_nnordemmenu=7, fncg_id=94 WHERE fncd_id = 868;
UPDATE seguranca.funcionalidade SET modu_id=3, fncd_dsfuncionalidade='Manter Motivo de Retorno do Registro do Negativador', fncd_tmultimaalteracao=now(), fncd_dscaminhomenu='Gsan/Cobranca/Negativacao', fncd_icpontoentrada=1, fncd_nnordemmenu=8, fncg_id=94 WHERE fncd_id = 869;
UPDATE seguranca.funcionalidade SET modu_id=3, fncd_dsfuncionalidade='Inserir Motivo de Exclusao do Negativador', fncd_tmultimaalteracao=now(), fncd_dscaminhomenu='Gsan/Cobranca/Negativacao', fncd_icpontoentrada=1, fncd_nnordemmenu=9, fncg_id=94 WHERE fncd_id = 864;
UPDATE seguranca.funcionalidade SET modu_id=3, fncd_dsfuncionalidade='Manter Motivo de Exclusao do Negativador', fncd_tmultimaalteracao=now(), fncd_dscaminhomenu='Gsan/Cobranca/Negativacao', fncd_icpontoentrada=1, fncd_nnordemmenu=10, fncg_id=94 WHERE fncd_id = 865;
UPDATE seguranca.funcionalidade SET modu_id=3, fncd_dsfuncionalidade='Inserir Comando de Negativacao', fncd_tmultimaalteracao=now(), fncd_dscaminhomenu='Gsan/Cobranca/Negativacao', fncd_icpontoentrada=1, fncd_nnordemmenu=11, fncg_id=94 WHERE fncd_id = 833;
UPDATE seguranca.funcionalidade SET modu_id=3, fncd_dsfuncionalidade='Manter Comando de Negativacao', fncd_tmultimaalteracao=now(), fncd_dscaminhomenu='Gsan/Cobranca/Negativacao', fncd_icpontoentrada=1, fncd_nnordemmenu=12, fncg_id=94 WHERE fncd_id = 861;
UPDATE seguranca.funcionalidade SET modu_id=3, fncd_dsfuncionalidade='Pesquisar Comando de Negativacao', fncd_tmultimaalteracao=now(), fncd_dscaminhomenu='Gsan/Cobranca/Negativacao', fncd_icpontoentrada=1, fncd_nnordemmenu=13, fncg_id=94 WHERE fncd_id = 826;
UPDATE seguranca.funcionalidade SET modu_id=3, fncd_dsfuncionalidade='Registrar Movimento de Retorno do Negativador', fncd_tmultimaalteracao=now(), fncd_dscaminhomenu='Gsan/Cobranca/Negativacao', fncd_icpontoentrada=1, fncd_nnordemmenu=14, fncg_id=94 WHERE fncd_id = 892;
UPDATE seguranca.funcionalidade SET modu_id=3, fncd_dsfuncionalidade='Gerar Relatorio Resultado da Simulacao', fncd_tmultimaalteracao=now(), fncd_dscaminhomenu='Gsan/Cobranca/Negativacao', fncd_icpontoentrada=1, fncd_nnordemmenu=15, fncg_id=94 WHERE fncd_id = 1027;
UPDATE seguranca.funcionalidade SET modu_id=3, fncd_dsfuncionalidade='Consultar Resumo da Negativacao', fncd_tmultimaalteracao=now(), fncd_dscaminhomenu='Gsan/Cobranca/Negativacao', fncd_icpontoentrada=1, fncd_nnordemmenu=16, fncg_id=94 WHERE fncd_id = 888;
UPDATE seguranca.funcionalidade SET modu_id=3, fncd_dsfuncionalidade='Gerar Relatorio Acompanhamento de Clientes Negativados', fncd_tmultimaalteracao=now(), fncd_dscaminhomenu='Gsan/Cobranca/Negativacao', fncd_icpontoentrada=1, fncd_nnordemmenu=17, fncg_id=94 WHERE fncd_id = 903;
UPDATE seguranca.funcionalidade SET modu_id=3, fncd_dsfuncionalidade='Gerar Relatorio de Negativacoes Excluidas', fncd_tmultimaalteracao=now(), fncd_dscaminhomenu='Gsan/Cobranca/Negativacao', fncd_icpontoentrada=1, fncd_nnordemmenu=18, fncg_id=94 WHERE fncd_id = 904;
UPDATE seguranca.funcionalidade SET modu_id=3, fncd_dsfuncionalidade='Excluir Negativacao Online', fncd_tmultimaalteracao=now(), fncd_dscaminhomenu='Gsan/Cobranca/Negativacao', fncd_icpontoentrada=1, fncd_nnordemmenu=19, fncg_id=94 WHERE fncd_id = 878;
UPDATE seguranca.funcionalidade SET fncd_icpontoentrada=2 WHERE fncd_id in (854, 876);
UPDATE seguranca.funcionalidade SET modu_id=3, fncg_id=94, fncd_dscaminhomenu='Gsan/Cobranca/Negativacao' WHERE fncd_dsfuncionalidade like '%Negativacao%';
UPDATE seguranca.funcionalidade SET fncd_icpontoentrada=2 WHERE fncd_id = 891;

DELETE FROM seguranca.grupo_func_operacao WHERE fncd_id in (888,903,904);

INSERT INTO seguranca.grupo_func_operacao(grup_id, oper_id, fncd_id, gfop_tmultimaalteracao) VALUES (1, 1144,888, now());
INSERT INTO seguranca.grupo_func_operacao(grup_id, oper_id, fncd_id, gfop_tmultimaalteracao) VALUES (1, 1175,888, now());
INSERT INTO seguranca.grupo_func_operacao(grup_id, oper_id, fncd_id, gfop_tmultimaalteracao) VALUES (1, 1176,888, now());
INSERT INTO seguranca.grupo_func_operacao(grup_id, oper_id, fncd_id, gfop_tmultimaalteracao) VALUES (1, 1184,888, now());

UPDATE seguranca.operacao SET oper_dscaminhourl = 'informarDadosConsultaNegativacaoAction.do' WHERE oper_id = 1144;
DELETE FROM seguranca.operacao WHERE oper_id in (1185,1187);
DELETE FROM seguranca.usuario_favoritos WHERE fncd_id in (903,904);
DELETE FROM seguranca.funcionalidade WHERE fncd_id in (903,904);

-- //@UNDO
-- SQL to undo the change goes here.


