-- // Tabela de login de cliente - loja virtual
-- Migration SQL that makes the change goes here.

-- Table: cadastro.cliente_login

CREATE TABLE IF NOT EXISTS cadastro.cliente_login
(
    cllo_id integer NOT NULL,
    imov_id integer NOT NULL,
    cllo_nmcliente character varying(50) NOT NULL,
    cllo_nncpfcnpj character varying(14) NOT NULL,
    cllo_dtnascimento date NOT NULL,
    cllo_nncelular character varying(11) NOT NULL,
    cllo_dsemail character varying(40) NOT NULL,
    cllo_nmsenha character varying(40) NOT NULL,
    cllo_icemailconfirmado smallint NOT NULL,
    cllo_tmcadastro timestamp without time zone NOT NULL,
    cllo_cdsituacao smallint NOT NULL,
    cllo_tmanalise timestamp without time zone,
    cllo_tmultimaalteracao timestamp without time zone NOT NULL DEFAULT now(),
    CONSTRAINT cliente_login_pkey PRIMARY KEY (cllo_id),
    CONSTRAINT fk1_cliente_login FOREIGN KEY (imov_id) REFERENCES cadastro.imovel (imov_id) MATCH SIMPLE ON UPDATE RESTRICT ON DELETE RESTRICT
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE cadastro.cliente_login OWNER to gsan_admin;
GRANT ALL ON TABLE cadastro.cliente_login TO gsan_admin;
GRANT DELETE, INSERT, SELECT, UPDATE ON TABLE cadastro.cliente_login TO role_aplic;
GRANT SELECT ON TABLE cadastro.cliente_login TO role_users;

COMMENT ON TABLE cadastro.cliente_login IS 'Tabela para armazenar os dados de solicitação de cadastro de Login de Cliente no Portal';
COMMENT ON COLUMN cadastro.cliente_login.cllo_id IS 'Id da Tabela cadastro.cliente_login (sequencial)';
COMMENT ON COLUMN cadastro.cliente_login.imov_id IS 'Id do Imovel';
COMMENT ON COLUMN cadastro.cliente_login.cllo_nmcliente IS 'Nome do Cliente';
COMMENT ON COLUMN cadastro.cliente_login.cllo_nncpfcnpj IS 'CPF ou CNPJ do Cliente';
COMMENT ON COLUMN cadastro.cliente_login.cllo_dtnascimento IS 'Data de Nascimento do Cliente';
COMMENT ON COLUMN cadastro.cliente_login.cllo_nncelular IS 'Número de Celular do Cliente';
COMMENT ON COLUMN cadastro.cliente_login.cllo_dsemail IS 'Email do Cliente';
COMMENT ON COLUMN cadastro.cliente_login.cllo_nmsenha IS 'Senha do Login que será criado para o Cliente';
COMMENT ON COLUMN cadastro.cliente_login.cllo_icemailconfirmado IS 'Indica se o cliente confirmou o cadastro via email (1 = Sim; 2 = NAO)';
COMMENT ON COLUMN cadastro.cliente_login.cllo_tmcadastro IS 'Timestamp da solicitação do cadastro';
COMMENT ON COLUMN cadastro.cliente_login.cllo_icemailconfirmado IS 'Situação do cadastro do cliente (0 = CADASTRADO; 1 = APROVADO, 2 = REPROVADO)';
COMMENT ON COLUMN cadastro.cliente_login.cllo_tmcadastro IS 'Data em que o cadastro foi APROVADO ou REPROVADO';
COMMENT ON COLUMN cadastro.cliente_login.cllo_tmultimaalteracao IS 'Timestamp da Última Alteração';

-- SEQUENCE: cadastro.seq_cliente_login

CREATE SEQUENCE cadastro.seq_cliente_login
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE cadastro.seq_cliente_login OWNER TO gsan_admin;
GRANT SELECT, UPDATE ON SEQUENCE cadastro.seq_cliente_login TO gsan_admin;
GRANT SELECT, UPDATE ON SEQUENCE cadastro.seq_cliente_login TO role_aplic;
GRANT SELECT ON SEQUENCE cadastro.seq_cliente_login TO role_users;

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
DROP SEQUENCE cadastro.seq_cliente_login;
DROP TABLE cadastro.cliente_login;
