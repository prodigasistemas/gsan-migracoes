-- // Criar tabela de parametros de cobranca
-- Migration SQL that makes the change goes here.

CREATE SEQUENCE cobranca.seq_cobranca_parametro
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;

CREATE TABLE cobranca.parametro
(
  id integer NOT NULL,
  nome character varying(40),
  valor character varying(150),
  CONSTRAINT cobranca_parametro_pkey PRIMARY KEY (id)
)

ALTER TABLE cobranca.parametro OWNER TO gsan_admin;
GRANT ALL ON TABLE cobranca.parametro TO gsan_admin;
GRANT SELECT, UPDATE, INSERT, DELETE ON TABLE cobranca.parametro TO role_aplic;
GRANT SELECT ON TABLE cobranca.parametro TO role_users;

-- //@UNDO
-- SQL to undo the change goes here.
DROP SEQUENCE cobranca.seq_cobranca_parametro;
DROP TABLE cobranca.parametro;