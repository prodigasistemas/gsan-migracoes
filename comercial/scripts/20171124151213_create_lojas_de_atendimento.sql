-- // create lojas de atendimento
-- Migration SQL that makes the change goes here.

DROP TABLE cadastro.loja_atendimento;

CREATE TABLE cadastro.loja_atendimento
(
  loja_id integer NOT NULL,
  loja_nome character varying(30),
  loja_localidade character varying(30) NOT NULL,
  loja_endereco character varying(100),
  loja_ddd character(2),
  loja_telefone character(9),
  loja_horario character varying(30),
  loja_coordenadas character varying(50),
  loja_tmultimaalteracao timestamp without time zone NOT NULL DEFAULT now(),
  CONSTRAINT loja_atendimento_pkey PRIMARY KEY (loja_id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE cadastro.loja_atendimento OWNER TO gsan_admin;
GRANT ALL ON TABLE cadastro.loja_atendimento TO gsan_admin;
GRANT SELECT, UPDATE, INSERT, DELETE ON TABLE cadastro.loja_atendimento TO role_aplic;
GRANT SELECT ON TABLE cadastro.loja_atendimento TO role_users;

-- //@UNDO
-- SQL to undo the change goes here.

DROP TABLE cadastro.loja_atendimento;

CREATE TABLE cadastro.loja_atendimento
(
  loja_id integer NOT NULL, -- Id na loja (gerado automaticamente pelo sistema
  loja_nmloja character varying(60) NOT NULL, -- Nome da loja
  func_id integer, -- código do funcionário responsável pela loja
  imov_id integer, -- matrícula do imóvel em que a loja está sediada
  loja_dspontorefencia character varying(60), -- Ponto de referência da localização da loja
  loja_cdddd character(2), -- Código do ddd do telefone da loja
  loja_nnfone character(9), -- número de telefone para contato
  loja_nnfonefax character(9), -- número de telefone para contatonúmero do telefone fax
  loja_dsemail character varying(60), -- email para contato
  loja_imloja bytea, -- Imagem foto da loja
  logr_id integer, -- código de logradouro associado ao endereço da loja
  bair_id integer, -- código do bairro associado ao endereço da loja
  loja_nnimovel character(5), -- número do imóvel que a loja está sediada
  loja_tmultimaalteracao timestamp without time zone NOT NULL DEFAULT now(), -- Data e hora da ultima alteração.
  CONSTRAINT loja_atendimento_pkey PRIMARY KEY (loja_id),
  CONSTRAINT fk1_loja_atendimento FOREIGN KEY (func_id)
      REFERENCES cadastro.funcionario (func_id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT fk2_loja_atendimento FOREIGN KEY (imov_id)
      REFERENCES cadastro.imovel (imov_id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT fk3_loja_atendimento FOREIGN KEY (logr_id)
      REFERENCES cadastro.logradouro (logr_id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT fk4_loja_atendimento FOREIGN KEY (bair_id)
      REFERENCES cadastro.bairro (bair_id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION
)
WITH (
  OIDS=FALSE
);
ALTER TABLE cadastro.loja_atendimento
  OWNER TO gsan_admin;
GRANT ALL ON TABLE cadastro.loja_atendimento TO gsan_admin;
GRANT SELECT, UPDATE, INSERT, DELETE ON TABLE cadastro.loja_atendimento TO role_aplic;
GRANT SELECT ON TABLE cadastro.loja_atendimento TO role_users;
