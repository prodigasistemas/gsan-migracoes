-- // Funcionalidade gerar lote atualizacao cadastral
-- Migration SQL that makes the change goes here
/**
** FUNCIONALIDADE
**/

INSERT INTO seguranca.funcionalidade
VALUES (nextval('seguranca.seq_funcionalidade'), 1, 'Reprovar Lote Imoveis', now(), 'Gsan/Cadastro/Atualizacao Cadastral',
        'reprovarImoveisLoteAction.do', 2, 'RepImtRec', 0,  2, 2, 10, null);

/**
** OPERACAO
**/

INSERT INTO seguranca.operacao
VALUES (nextval('seguranca.seq_operacao'), (SELECT fncd_id FROM seguranca.funcionalidade WHERE fncd_dsfuncionalidade LIKE 'Reprovar Lote Imoveis'), 'Reprovar Lote Imoveis',
        'RepImtRec', null, now(), null, null, 6, null, 2);

/**
** GRUPO FUNCIONALIDADE OPERACAO
**/
INSERT INTO seguranca.grupo_func_operacao
VALUES (1, (SELECT oper_id FROM seguranca.operacao WHERE oper_dsoperacao LIKE 'Reprovar Lote Imoveis'),
        (SELECT fncd_id FROM seguranca.funcionalidade WHERE fncd_dsfuncionalidade LIKE 'Reprovar Lote Imoveis'), now());

INSERT INTO seguranca.grupo_func_operacao
VALUES (73, (SELECT oper_id FROM seguranca.operacao WHERE oper_dsoperacao LIKE 'Reprovar Lote Imoveis'),
        (SELECT fncd_id FROM seguranca.funcionalidade WHERE fncd_dsfuncionalidade LIKE 'Reprovar Lote Imoveis'), now());

/**
** NOVA COLUNA 
**/

ALTER TABLE atualizacaocadastral.imovel_controle_atlz_cad ADD COLUMN icac_tmreprovacaolote timestamp without time zone;
COMMENT ON COLUMN atualizacaocadastral.imovel_controle_atlz_cad.icac_tmreprovacaolote IS 'timestamp de quando foi reprovado o lote';


-- //@UNDO
-- SQL to undo the change goes here.

ALTER TABLE atualizacaocadastral.imovel_controle_atlz_cad DROP COLUMN  icac_tmreprovacaolote;

delete from seguranca.usuario_favoritos where fncd_id in (SELECT fncd_id FROM seguranca.funcionalidade WHERE fncd_dsfuncionalidade LIKE 'Reprovar Lote Imoveis');

DELETE FROM seguranca.grupo_func_operacao
WHERE fncd_id IN (SELECT fncd_id FROM seguranca.funcionalidade WHERE fncd_dsfuncionalidade LIKE 'Reprovar Lote Imoveis');

DELETE FROM seguranca.operacao WHERE oper_dsoperacao = 'Reprovar Lote Imoveis';

DELETE FROM seguranca.funcionalidade WHERE fncd_dsfuncionalidade = 'Reprovar Lote Imoveis';
