-- // criar tabela para historico de alteracoes em cliente
-- Migration SQL that makes the change goes here.

CREATE TABLE cadastro.cliente_historico
(
  clhi_id                      integer NOT NULL,
  clie_id                      integer NOT NULL,
  clhi_cdclienteresponsavel    integer,
  clhi_nmcliente               character varying(50),
  clhi_nmabreviado             character varying(40),
  cltp_id                      integer NOT NULL,
  clhi_nncpf                   character varying(11),
  clhi_nnrg                    character varying(13),
  clhi_dtrgemissao             date,
  oerg_id                      integer,
  unfe_id                      integer,
  clhi_dtnascimento            date, 
  prof_id                      integer,
  psex_id                      integer,
  clhi_nncnpj                  character varying(14),
  ratv_id                      integer,
  clhi_dsemail                 character varying(40),
  clhi_icuso                   smallint,
  clhi_tmultimaalteracao       timestamp without time zone NOT NULL DEFAULT now(),
  clhi_ddvencimento            smallint,
  clhi_icacaocobranca          smallint,
  clhi_nnmae                   character varying(50),
  clhi_iccobrancaacrescimos    smallint DEFAULT 1,
  clhi_icgeraarquivotexto      smallint DEFAULT 2,
  clhi_icvencimentomesseguinte smallint DEFAULT 2,
  clhi_icgerafaturaantecipada  integer  DEFAULT 2,
  clhi_icusonomefantasiaconta  smallint NOT NULL DEFAULT 2,
  clhi_icpermitenegativacao    smallint NOT NULL DEFAULT 1,
  clhi_icnegativacaoperiodo    smallint NOT NULL DEFAULT 2,
  usur_id                      integer,
  CONSTRAINT cliente_historico_pkey PRIMARY KEY (clhi_id),
  CONSTRAINT fk01_cliente_historico FOREIGN KEY (cltp_id)
      REFERENCES cadastro.cliente_tipo (cltp_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT,
  CONSTRAINT fk02_cliente_historico FOREIGN KEY (oerg_id)
      REFERENCES cadastro.orgao_expedidor_rg (oerg_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT,
  CONSTRAINT fk03_cliente_historico FOREIGN KEY (unfe_id)
      REFERENCES cadastro.unidade_federacao (unfe_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT,
  CONSTRAINT fk04_cliente_historico FOREIGN KEY (prof_id)
      REFERENCES cadastro.profissao (prof_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT,
  CONSTRAINT fk05_cliente_historico FOREIGN KEY (psex_id)
      REFERENCES cadastro.pessoa_sexo (psex_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT,
  CONSTRAINT fk06_cliente_historico FOREIGN KEY (ratv_id)
      REFERENCES cadastro.ramo_atividade (ratv_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT,
  CONSTRAINT fk07_cliente_historico FOREIGN KEY (clhi_cdclienteresponsavel)
      REFERENCES cadastro.cliente (clie_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT,
  CONSTRAINT fk08_cliente_historico FOREIGN KEY (clie_id)
      REFERENCES cadastro.cliente (clie_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT,
  CONSTRAINT fk09_imovel_historico FOREIGN KEY (usur_id)
      REFERENCES seguranca.usuario (usur_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT      
)
WITH (
  OIDS=FALSE
);
ALTER TABLE                                   cadastro.cliente_historico OWNER TO gsan_admin;
GRANT ALL ON TABLE                            cadastro.cliente_historico TO gsan_admin;
GRANT SELECT, UPDATE, INSERT, DELETE ON TABLE cadastro.cliente_historico TO role_aplic;
GRANT SELECT ON TABLE                         cadastro.cliente_historico TO role_users;

COMMENT ON TABLE cadastro.cliente_historico                               IS 'Qualquer pessoa de natureza fisica ou juridica, que tenha ou possa vir a ter alguma relacao com um ou mais imovel';
COMMENT ON COLUMN cadastro.cliente_historico.clhi_id                      IS 'Id do cliente historico';
COMMENT ON COLUMN cadastro.cliente_historico.clie_id                      IS 'Id do cliente';
COMMENT ON COLUMN cadastro.cliente_historico.clhi_cdclienteresponsavel    IS 'Id do cliente responsavel superior';
COMMENT ON COLUMN cadastro.cliente_historico.clhi_nmcliente               IS 'Nome do cliente';
COMMENT ON COLUMN cadastro.cliente_historico.clhi_nmabreviado             IS 'Nome abreviado,Nome Fantasia ou sigla';
COMMENT ON COLUMN cadastro.cliente_historico.cltp_id                      IS 'Id do tipo de cliente';
COMMENT ON COLUMN cadastro.cliente_historico.clhi_nncpf                   IS 'Numero do CPF do cliente';
COMMENT ON COLUMN cadastro.cliente_historico.clhi_nnrg                    IS 'Numero do RG do cliente';
COMMENT ON COLUMN cadastro.cliente_historico.clhi_dtrgemissao             IS 'Data de emissao do RG do cliente';
COMMENT ON COLUMN cadastro.cliente_historico.oerg_id                      IS 'Id do orgao emissor do RG do cliente';
COMMENT ON COLUMN cadastro.cliente_historico.unfe_id                      IS 'Id da unidade da federacao do orgao emissor';
COMMENT ON COLUMN cadastro.cliente_historico.clhi_dtnascimento            IS 'Data de nascimento do cliente';
COMMENT ON COLUMN cadastro.cliente_historico.prof_id                      IS 'Id da profissao do cliente';
COMMENT ON COLUMN cadastro.cliente_historico.psex_id                      IS 'Id do sexo do cliente  ';
COMMENT ON COLUMN cadastro.cliente_historico.clhi_nncnpj                  IS 'Numero do CNPJ do cliente';
COMMENT ON COLUMN cadastro.cliente_historico.ratv_id                      IS 'Id do ramo de atividade do cliente';
COMMENT ON COLUMN cadastro.cliente_historico.clhi_dsemail                 IS 'Email do cliente';
COMMENT ON COLUMN cadastro.cliente_historico.clhi_icuso                   IS 'Indicador de uso (1_Ativo 2_Inativo)';
COMMENT ON COLUMN cadastro.cliente_historico.clhi_tmultimaalteracao       IS 'Timestamp';
COMMENT ON COLUMN cadastro.cliente_historico.clhi_ddvencimento            IS 'Dia de vencimento das contas dos imoveis para os quais o cliente e responsavel';
COMMENT ON COLUMN cadastro.cliente_historico.clhi_icacaocobranca          IS 'Indicador de acao cobranca (1_Ativo 2_Inativo)';
COMMENT ON COLUMN cadastro.cliente_historico.clhi_nnmae                   IS 'Nome da mae';
COMMENT ON COLUMN cadastro.cliente_historico.clhi_iccobrancaacrescimos    IS 'Indicador de cobranca e acrescimos (1_Ativo 2_Inativo)';
COMMENT ON COLUMN cadastro.cliente_historico.clhi_icgeraarquivotexto      IS 'Indicador de arquivo texto (1_Ativo 2_Inativo)';
COMMENT ON COLUMN cadastro.cliente_historico.clhi_icvencimentomesseguinte IS 'Indicador se o dia de vencimento indicado do cliente quando o mesmo e responsavel e para mes seguinte (1_Ativo  ,2_Inativo)';
COMMENT ON COLUMN cadastro.cliente_historico.clhi_icgerafaturaantecipada  IS 'Indicador se o cliente permite a geracao de fatura antecipada (1_Ativo 2_Inativo)';
COMMENT ON COLUMN cadastro.cliente_historico.clhi_icusonomefantasiaconta  IS 'Indicador de uso do nome de fantasia (nome abreviado) na conta';
COMMENT ON COLUMN cadastro.cliente_historico.clhi_icpermitenegativacao    IS 'indica se o cliente poderá ser negativado';
COMMENT ON COLUMN cadastro.cliente_historico.clhi_icnegativacaoperiodo    IS 'Indicador para negativacao do cliente por periodo';
COMMENT ON COLUMN cadastro.cliente_historico.usur_id                      IS 'Usuario que efetuou a operacao';


CREATE SEQUENCE cadastro.seq_cliente_historico
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE                   cadastro.seq_cliente_historico OWNER TO gsan_admin;
GRANT ALL ON TABLE            cadastro.seq_cliente_historico TO gsan_admin;
GRANT SELECT, UPDATE ON TABLE cadastro.seq_cliente_historico TO role_aplic;
GRANT SELECT ON TABLE         cadastro.seq_cliente_historico TO role_users;

-- //@UNDO
-- SQL to undo the change goes here.


DROP TABLE    cadastro.cliente_historico;
DROP SEQUENCE cadastro.seq_cliente_historico;