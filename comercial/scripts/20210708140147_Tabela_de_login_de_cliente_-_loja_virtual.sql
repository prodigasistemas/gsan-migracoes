-- // Tabela de login de cliente - loja virtual
-- Migration SQL that makes the change goes here.


CREATE TABLE IF NOT EXISTS atendimentopublico.cadastro_login_cliente
(
    clcl_id integer NOT NULL,
    imov_id integer NOT NULL,
    clcl_nmcliente character varying(50) NOT NULL,
    clcl_nncpfcnpj character varying(14) NOT NULL,
    clcl_dtnascimento date NOT NULL,
    clcl_nncelular character varying(11) NOT NULL,
    clcl_dsemail character varying(40) NOT NULL,
    clcl_nmsenha character varying(40) NOT NULL,
    clcl_icemailconfirmado smallint NOT NULL,
    clcl_tmcadastro timestamp without time zone NOT NULL,
    clcl_tmultimaalteracao timestamp without time zone NOT NULL DEFAULT now(),
    CONSTRAINT cliente_imovel_pkey PRIMARY KEY (clcl_id),
    CONSTRAINT fk1_cliente_imovel FOREIGN KEY (imov_id) REFERENCES cadastro.imovel (imov_id) MATCH SIMPLE ON UPDATE RESTRICT ON DELETE RESTRICT
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE atendimentopublico.cadastro_login_cliente OWNER to gsan_admin;
GRANT ALL ON TABLE atendimentopublico.cadastro_login_cliente TO gsan_admin;
GRANT DELETE, INSERT, SELECT, UPDATE ON TABLE atendimentopublico.cadastro_login_cliente TO gsan_admin;
GRANT SELECT ON TABLE atendimentopublico.cadastro_login_cliente TO gsan_admin;

COMMENT ON TABLE atendimentopublico.cadastro_login_cliente IS 'Tabela para armazenar os dados de solicitação de cadastro de Login de Cliente no Portal';
COMMENT ON COLUMN atendimentopublico.cadastro_login_cliente.clcl_id IS 'Id da Tabela atendimentopublico.cadastro_login_cliente (sequencial)';
COMMENT ON COLUMN atendimentopublico.cadastro_login_cliente.imov_id IS 'Id do Imovel';
COMMENT ON COLUMN atendimentopublico.cadastro_login_cliente.clcl_nmcliente IS 'Nome do Cliente';
COMMENT ON COLUMN atendimentopublico.cadastro_login_cliente.clcl_nncpfcnpj IS 'CPF ou CNPJ do Cliente';
COMMENT ON COLUMN atendimentopublico.cadastro_login_cliente.clcl_dtnascimento IS 'Data de Nascimento do Cliente';
COMMENT ON COLUMN atendimentopublico.cadastro_login_cliente.clcl_nncelular IS 'Número de Celular do Cliente';
COMMENT ON COLUMN atendimentopublico.cadastro_login_cliente.clcl_dsemail IS 'Email do Cliente';
COMMENT ON COLUMN atendimentopublico.cadastro_login_cliente.clcl_nmsenha IS 'Senha do Login que será criado para o Cliente';
COMMENT ON COLUMN atendimentopublico.cadastro_login_cliente.clcl_icemailconfirmado IS 'Indica se o cliente confirmou o cadastro via email (1_Sim; 2_Nao)';
COMMENT ON COLUMN atendimentopublico.cadastro_login_cliente.clcl_tmcadastro IS 'Timestamp da solicitação do cadastro';
COMMENT ON COLUMN atendimentopublico.cadastro_login_cliente.clcl_tmultimaalteracao IS 'Timestamp da Última Alteração';


CREATE SEQUENCE atendimentopublico.seq_cadastro_login_cliente
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE atendimentopublico.seq_cadastro_login_cliente OWNER TO gsan_admin;
GRANT SELECT, UPDATE ON SEQUENCE atendimentopublico.seq_cadastro_login_cliente TO gsan_admin;
GRANT SELECT ON SEQUENCE atendimentopublico.seq_cadastro_login_cliente TO gsan_admin;

insert into seguranca.modulo VALUES (14, 'PORTAL', 'PRTL', now(), 14); 

insert into seguranca.funcionalidade 
VALUES (16079, 14, 'Login Portal', now(), '', 'sem url', 2, 'LGLJVT', 0, 2, 2, NULL, NULL);


insert into cadastro.envio_email values
 (56, 'lojavirtual@cosanpa.pa.gov.br', '', 'COSANPA - Confirmação de Cadastro', 'COSANPA - Confirmação de Cadastro',
 (select fncd_id from seguranca.funcionalidade where fncd_dsfuncionalidade = 'Login Portal'),
 NOW());

-- //@UNDO
-- SQL to undo the change goes here.

DROP SEQUENCE atendimentopublico.seq_cadastro_login_cliente;
DROP TABLE atendimentopublico.cadastro_login_cliente;
