-- // adicionar_funcionalidade_nova_consulta_imovel
-- Migration SQL that makes the change goes here.

/**
** FUNCIONALIDADE
**/
INSERT INTO seguranca.funcionalidade
VALUES (nextval('seguranca.seq_funcionalidade'), 
        (select modu_id from seguranca.modulo where upper(modu_dsmodulo) = 'ATENDIMENTO AO PUBLICO'), 
        'Consultar Imóvel 2.0', now(), null,
        'http://portalgsan.cosanpa.pa.gov.br/imoveis', 2, 'ConImov2', 100,  1,
        2, 
        (select fncg_id from seguranca.funcionalidade_categoria 
            where upper(fncg_dsfuncionalidadecategoria) = 'ATENDIMENTO AO PUBLICO' 
            and modu_id = (select modu_id from seguranca.modulo where upper(modu_dsmodulo) = 'ATENDIMENTO AO PUBLICO')), 
        'http://portalgsan.cosanpa.pa.gov.br/imoveis');

/**
** OPERACAO
**/
INSERT INTO seguranca.operacao
VALUES (nextval('seguranca.seq_operacao'), (SELECT fncd_id FROM seguranca.funcionalidade WHERE fncd_dsfuncionalidade LIKE 'Consultar Imóvel 2.0'), 'Consultar Imóvel 2.0',
        'ConImov2', null, now(), null, null, 6, null, 2);


/**
** GRUPO FUNCIONALIDADE OPERACAO
**/
INSERT INTO seguranca.grupo_func_operacao
VALUES (1, (SELECT oper_id FROM seguranca.operacao WHERE oper_dsoperacao LIKE 'Consultar Imóvel 2.0'),
        (SELECT fncd_id FROM seguranca.funcionalidade WHERE fncd_dsfuncionalidade LIKE 'Consultar Imóvel 2.0'), now());

INSERT INTO seguranca.grupo_func_operacao
VALUES (73, (SELECT oper_id FROM seguranca.operacao WHERE oper_dsoperacao LIKE 'Consultar Imóvel 2.0'),
        (SELECT fncd_id FROM seguranca.funcionalidade WHERE fncd_dsfuncionalidade LIKE 'Consultar Imóvel 2.0'), now());


-- //@UNDO
-- SQL to undo the change goes here.

DELETE FROM seguranca.grupo_func_operacao
WHERE fncd_id IN (SELECT fncd_id FROM seguranca.funcionalidade WHERE fncd_dsfuncionalidade LIKE 'Consultar Imóvel 2.0');

DELETE FROM seguranca.operacao WHERE oper_dsoperacao = 'Consultar Imóvel 2.0';

DELETE FROM seguranca.funcionalidade WHERE fncd_dsfuncionalidade = 'Consultar Imóvel 2.0';
