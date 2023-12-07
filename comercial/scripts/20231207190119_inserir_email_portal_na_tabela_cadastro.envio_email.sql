-- // inserir_email_portal_na_tabela_cadastro.envio_email
-- Migration SQL that makes the change goes here.

INSERT INTO seguranca.funcionalidade
VALUES (
    (SELECT max(fncd_id) + 1 FROM seguranca.funcionalidade), 
    6, 
    'Enviar Email de Confirmação de Cadastro de Login de Cliente',
    now(),
    null,
    'sem url',
    2,
    'EECCLC',
    0,
    2,
    2,
    null,
    null);

INSERT INTO cadastro.envio_email
VALUES(
    56, 
    'lojavirtual@cosanpa.pa.gov.br',
    'EMAIL DO CLIENTE',
    'COSANPA - Confirmação de Cadastro',
    'COSANPA - Confirmação de Cadastro',
    (SELECT fncd_id FROM seguranca.funcionalidade WHERE fncd_dsfuncionalidade = 'Enviar Email de Confirmação de Cadastro de Login de Cliente'),
    now());

-- //@UNDO
-- SQL to undo the change goes here.

DELETE FROM cadastro.envio_email WHERE enem_id = 56;
DELETE FROM seguranca.funcionalidade WHERE fncd_dsfuncionalidade = 'Enviar Email de Confirmação de Cadastro de Login de Cliente';

