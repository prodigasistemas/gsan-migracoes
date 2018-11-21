-- // Funcionalidade gerar lote atualizacao cadastral
-- Migration SQL that makes the change goes here.

/**
** FUNCIONALIDADE
**/
INSERT INTO seguranca.funcionalidade
VALUES (nextval('seguranca.seq_funcionalidade'), 1, 'Exibir Gerar Lote Atualizacao Cadastral', now(), 'Gsan/Cadastro/Atualizacao Cadastral',
        'exibirFiltrarGerarLoteAtualizacaoCadastralAction.do', 1, 'ExLtRec', 7,  2, 2, 10, null);


INSERT INTO seguranca.funcionalidade
VALUES (nextval('seguranca.seq_funcionalidade'), 1, 'Filtrar Imoveis Gerar Lote Atualizacao Cadastral', now(), 'Gsan/Cadastro/Atualizacao Cadastral',
        'filtrarGerarLoteAtualizacaoCadastralAction.do', 2, 'FILtRec', 0,  2, 2, 10, null);


INSERT INTO seguranca.funcionalidade
VALUES (nextval('seguranca.seq_funcionalidade'), 1, 'Gerar Lote Atualizacao Cadastral', now(), 'Gsan/Cadastro/Atualizacao Cadastral',
        'gerarLoteAtualizacaoCadastral.do', 2, 'GrLtRec', 0,  2, 2, 10, null);

/**
** OPERACAO
**/
INSERT INTO seguranca.operacao
VALUES (nextval('seguranca.seq_operacao'), (SELECT fncd_id FROM seguranca.funcionalidade WHERE fncd_dsfuncionalidade LIKE 'Exibir Gerar Lote Atualizacao Cadastral'), 'Exibir Gerar Lote Atualizacao Cadastral',
        'LoteRec', null, now(), null, null, 6, null, 2);

INSERT INTO seguranca.operacao
VALUES (nextval('seguranca.seq_operacao'), (SELECT fncd_id FROM seguranca.funcionalidade WHERE fncd_dsfuncionalidade LIKE 'Filtrar Imoveis Gerar Lote Atualizacao Cadastral'), 'Filtrar Imoveis Gerar Lote Atualizacao Cadastral',
        'FLtRec', null, now(), null, null, 6, null, 2);

INSERT INTO seguranca.operacao
VALUES (nextval('seguranca.seq_operacao'), (SELECT fncd_id FROM seguranca.funcionalidade WHERE fncd_dsfuncionalidade LIKE 'Gerar Lote Atualizacao Cadastral'), 'Gerar Lote Atualizacao Cadastral',
        'GrLtRec', null, now(), null, null, 6, null, 2);

/**
** GRUPO FUNCIONALIDADE OPERACAO
**/
INSERT INTO seguranca.grupo_func_operacao
VALUES (1, (SELECT oper_id FROM seguranca.operacao WHERE oper_dsoperacao LIKE 'Exibir Gerar Lote Atualizacao Cadastral'),
        (SELECT fncd_id FROM seguranca.funcionalidade WHERE fncd_dsfuncionalidade LIKE 'Exibir Gerar Lote Atualizacao Cadastral'), now());

INSERT INTO seguranca.grupo_func_operacao
VALUES (73, (SELECT oper_id FROM seguranca.operacao WHERE oper_dsoperacao LIKE 'Exibir Gerar Lote Atualizacao Cadastral'),
        (SELECT fncd_id FROM seguranca.funcionalidade WHERE fncd_dsfuncionalidade LIKE 'Exibir Gerar Lote Atualizacao Cadastral'), now());

INSERT INTO seguranca.grupo_func_operacao
VALUES (1, (SELECT oper_id FROM seguranca.operacao WHERE oper_dsoperacao LIKE 'Filtrar Imoveis Gerar Lote Atualizacao Cadastral'),
        (SELECT fncd_id FROM seguranca.funcionalidade WHERE fncd_dsfuncionalidade LIKE 'Filtrar Imoveis Gerar Lote Atualizacao Cadastral'), now());

INSERT INTO seguranca.grupo_func_operacao
VALUES (73, (SELECT oper_id FROM seguranca.operacao WHERE oper_dsoperacao LIKE 'Filtrar Imoveis Gerar Lote Atualizacao Cadastral'),
        (SELECT fncd_id FROM seguranca.funcionalidade WHERE fncd_dsfuncionalidade LIKE 'Filtrar Imoveis Gerar Lote Atualizacao Cadastral'), now());


INSERT INTO seguranca.grupo_func_operacao
VALUES (1, (SELECT oper_id FROM seguranca.operacao WHERE oper_dsoperacao LIKE 'Gerar Lote Atualizacao Cadastral'),
        (SELECT fncd_id FROM seguranca.funcionalidade WHERE fncd_dsfuncionalidade LIKE 'Gerar Lote Atualizacao Cadastral'), now());

INSERT INTO seguranca.grupo_func_operacao
VALUES (73, (SELECT oper_id FROM seguranca.operacao WHERE oper_dsoperacao LIKE 'Gerar Lote Atualizacao Cadastral'),
        (SELECT fncd_id FROM seguranca.funcionalidade WHERE fncd_dsfuncionalidade LIKE 'Gerar Lote Atualizacao Cadastral'), now());

-- //@UNDO
-- SQL to undo the change goes here.

delete from seguranca.usuario_favoritos where fncd_id in (SELECT fncd_id FROM seguranca.funcionalidade WHERE fncd_dsfuncionalidade LIKE 'Exibir Gerar Lote Atualizacao Cadastral');

DELETE FROM seguranca.grupo_func_operacao
WHERE fncd_id IN (SELECT fncd_id FROM seguranca.funcionalidade WHERE fncd_dsfuncionalidade LIKE 'Exibir Gerar Lote Atualizacao Cadastral');

DELETE FROM seguranca.operacao WHERE oper_dsoperacao = 'Exibir Gerar Lote Atualizacao Cadastral';

DELETE FROM seguranca.funcionalidade WHERE fncd_dsfuncionalidade = 'Exibir Gerar Lote Atualizacao Cadastral';


delete from seguranca.usuario_favoritos where fncd_id in (SELECT fncd_id FROM seguranca.funcionalidade WHERE fncd_dsfuncionalidade LIKE 'Filtrar Imoveis Gerar Lote Atualizacao Cadastral');

DELETE FROM seguranca.grupo_func_operacao
WHERE fncd_id IN (SELECT fncd_id FROM seguranca.funcionalidade WHERE fncd_dsfuncionalidade LIKE 'Filtrar Imoveis Gerar Lote Atualizacao Cadastral');

DELETE FROM seguranca.operacao WHERE oper_dsoperacao = 'Filtrar Imoveis Gerar Lote Atualizacao Cadastral';

DELETE FROM seguranca.funcionalidade WHERE fncd_dsfuncionalidade = 'Filtrar Imoveis Gerar Lote Atualizacao Cadastral';


delete from seguranca.usuario_favoritos where fncd_id in (SELECT fncd_id FROM seguranca.funcionalidade WHERE fncd_dsfuncionalidade LIKE 'Gerar Lote Atualizacao Cadastral');

DELETE FROM seguranca.grupo_func_operacao
WHERE fncd_id IN (SELECT fncd_id FROM seguranca.funcionalidade WHERE fncd_dsfuncionalidade LIKE 'Gerar Lote Atualizacao Cadastral');

DELETE FROM seguranca.operacao WHERE oper_dsoperacao = 'Gerar Lote Atualizacao Cadastral';

DELETE FROM seguranca.funcionalidade WHERE fncd_dsfuncionalidade = 'Gerar Lote Atualizacao Cadastral';