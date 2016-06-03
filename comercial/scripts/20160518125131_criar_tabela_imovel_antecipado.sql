-- // criar_tabela_imovel_antecipacao
-- Migration SQL that makes the change goes here.

CREATE TABLE faturamento.imovel_antecipacao
(
  iant_id integer NOT NULL,
  iant_refinicial character varying(25) NOT NULL,
  iant_qtdmeses integer NOT NULL,
  iant_icantecipado smallint NOT NULL,
  iant_tmultimaalteracao timestamp without time zone NOT NULL DEFAULT now(),
  imov_id integer NOT NULL,
  CONSTRAINT imovel_antecipacao_pkey PRIMARY KEY (iant_id),
  CONSTRAINT fk1_imovel_antecipacao FOREIGN KEY (imov_id)
      REFERENCES cadastro.imovel (imov_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT
)
WITH (
  OIDS=FALSE
);

ALTER TABLE faturamento.imovel_antecipacao OWNER TO gsan_admin;
GRANT ALL ON TABLE faturamento.imovel_antecipacao TO gsan_admin;
GRANT SELECT, UPDATE, INSERT, DELETE ON TABLE faturamento.imovel_antecipacao TO pg_aplic;
GRANT SELECT ON TABLE faturamento.imovel_antecipacao TO pg_users;


CREATE SEQUENCE faturamento.seq_imovel_antecipacao
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 6
  CACHE 1;
ALTER TABLE faturamento.seq_imovel_antecipacao OWNER TO gsan_admin;
GRANT ALL ON TABLE faturamento.seq_imovel_antecipacao TO gsan_admin;
GRANT SELECT, UPDATE ON TABLE faturamento.seq_imovel_antecipacao TO pg_aplic;
GRANT SELECT ON TABLE faturamento.seq_imovel_antecipacao TO pg_users;



-- //@UNDO
-- SQL to undo the change goes here.

DROP TABLE faturamento.imovel_antecipacao;
DROP SEQUENCE faturamento.seq_imovel_antecipacao;
