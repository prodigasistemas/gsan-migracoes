-- // comunicado_alto_consumo
-- Migration SQL that makes the change goes here.

CREATE SEQUENCE micromedicao.seq_comunicado_alto_consumo
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;

CREATE TABLE micromedicao.comunicado_alto_consumo
(
  ctac_id integer NOT NULL,
  ctac_amreferencia integer NOT NULL,
  imov_id integer,
  ctac_tmultimaalteracao timestamp without time zone NOT NULL DEFAULT now(),
  CONSTRAINT micromedicao_comunicado_alto_consumo_pkey PRIMARY KEY (ctac_id),
  CONSTRAINT fk1_imovel FOREIGN KEY (imov_id)
      REFERENCES cadastro.imovel (imov_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT
) WITH (
  OIDS=FALSE
);

ALTER TABLE micromedicao.comunicado_alto_consumo OWNER TO gsan_admin;
GRANT ALL ON TABLE micromedicao.comunicado_alto_consumo TO gsan_admin;
GRANT SELECT, UPDATE, INSERT, DELETE ON TABLE micromedicao.comunicado_alto_consumo TO role_aplic;
GRANT SELECT ON TABLE micromedicao.comunicado_alto_consumo TO role_users;

ALTER TABLE micromedicao.seq_comunicado_alto_consumo OWNER TO gsan_admin;

GRANT ALL ON SEQUENCE micromedicao.seq_comunicado_alto_consumo TO gsan_admin;
GRANT SELECT, UPDATE ON SEQUENCE micromedicao.seq_comunicado_alto_consumo TO role_aplic;
GRANT SELECT ON SEQUENCE micromedicao.seq_comunicado_alto_consumo TO role_users;

-- //@UNDO
-- SQL to undo the change goes here.


drop table micromedicao.comunicado_alto_consumo;
drop sequence micromedicao.seq_comunicado_alto_consumo;