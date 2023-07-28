-- // criacao_caminho_aprovacao_login_cadastro_cliente
-- Migration SQL that makes the change goes here.

INSERT INTO seguranca.funcionalidade
VALUES (nextval('seguranca.seq_funcionalidade'), 
        6, 
        'Aprovação cadastro login cliente', now(), null,
        'http://portalgsan.cosanpa.pa.gov.br/aprovacao_logins', 2, 'AprCaLoCl', 101,  1,
        2, 
        (select fncg_id from seguranca.funcionalidade_categoria 
            where upper(fncg_dsfuncionalidadecategoria) = 'ATENDIMENTO AO PUBLICO' 
            and modu_id = (select modu_id from seguranca.modulo where upper(modu_dsmodulo) = 'ATENDIMENTO AO PUBLICO')), 
        'http://portalgsan.cosanpa.pa.gov.br/aprovacao_logins');
        
       
INSERT INTO seguranca.operacao
VALUES (nextval('seguranca.seq_operacao'), 
(SELECT fncd_id FROM seguranca.funcionalidade WHERE fncd_dsfuncionalidade LIKE 'Aprovação cadastro login cliente'), 'Aprovação cadastro login cliente',
        'AprCaLoCl', null, now(), null, null, 6, null, 2);       
       
INSERT INTO seguranca.grupo_func_operacao VALUES (1, 15129, 16114, now());

-- //@UNDO
-- SQL to undo the change goes here.

DELETE from seguranca.grupo_func_opecao where oper_id = 15129 and fncd_id = 16114;
DELETE from seguranca.operacao where oper_id = 15129;
DELETE from seguranca.funcionalidade where fncd_id = 16114;
