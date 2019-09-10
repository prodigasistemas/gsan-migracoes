-- // adicionando_funcionalidade_reprovados
-- Migration SQL that makes the change goes here.

/**
** FUNCIONALIDADE
**/
INSERT INTO seguranca.funcionalidade
VALUES (nextval('seguranca.seq_funcionalidade'), 13, 'Reprovados', now(), null,
        'http://desempenho.cosanpa.pa.gov.br/reprovados', 2, 'Reprov', 0,  2,
        2, 145, 'http://desempenho.cosanpa.pa.gov.br/reprovados');


/**
** OPERACAO
**/
INSERT INTO seguranca.operacao
VALUES (nextval('seguranca.seq_operacao'), (SELECT fncd_id FROM seguranca.funcionalidade WHERE fncd_dsfuncionalidade LIKE 'Reprovados'), 'Reprovados',
        'Reprov', null, now(), null, null, 6, null, 2);


/**
** GRUPO FUNCIONALIDADE OPERACAO
**/
INSERT INTO seguranca.grupo_func_operacao
VALUES (1, (SELECT oper_id FROM seguranca.operacao WHERE oper_dsoperacao LIKE 'Reprovados'),
        (SELECT fncd_id FROM seguranca.funcionalidade WHERE fncd_dsfuncionalidade LIKE 'Reprovados'), now());

INSERT INTO seguranca.grupo_func_operacao
VALUES (73, (SELECT oper_id FROM seguranca.operacao WHERE oper_dsoperacao LIKE 'Reprovados'),
        (SELECT fncd_id FROM seguranca.funcionalidade WHERE fncd_dsfuncionalidade LIKE 'Reprovados'), now());

-- //@UNDO
-- SQL to undo the change goes here.

DELETE FROM seguranca.grupo_func_operacao
WHERE fncd_id IN (SELECT fncd_id FROM seguranca.funcionalidade WHERE fncd_dsfuncionalidade LIKE 'Reprovados');

DELETE FROM seguranca.operacao WHERE oper_dsoperacao = 'Reprovados';

DELETE FROM seguranca.funcionalidade WHERE fncd_dsfuncionalidade = 'Reprovados';
