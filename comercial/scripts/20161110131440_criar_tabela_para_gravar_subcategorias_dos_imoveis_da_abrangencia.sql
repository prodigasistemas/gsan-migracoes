-- // criar tabela para gravar subcategorias dos imoveis da abrangencia
-- Migration SQL that makes the change goes here.

CREATE TABLE desempenho.imovel_subcategoria_abrangencia
(
  imsa_id                 integer NOT NULL,
  imsa_tmcriacao          timestamp without time zone NOT NULL DEFAULT now(),
  imsa_tmultimaalteracao  timestamp without time zone NOT NULL DEFAULT now(),
  scat_id                 integer NOT NULL,
  imsa_qteconomias        integer NOT NULL,
  imov_id                 integer NOT NULL,

  CONSTRAINT imovel_subcategoria_abrangencia_pkey PRIMARY KEY (imsa_id),
  CONSTRAINT fk1_imovel_subcategoria_abrangencia  FOREIGN KEY (imov_id)
      REFERENCES cadastro.imovel (imov_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT
)
WITH (
  OIDS=FALSE
);

ALTER TABLE                                   desempenho.imovel_subcategoria_abrangencia OWNER TO gsan_admin;
GRANT ALL ON TABLE                            desempenho.imovel_subcategoria_abrangencia TO gsan_admin;
GRANT SELECT, UPDATE, INSERT, DELETE ON TABLE desempenho.imovel_subcategoria_abrangencia TO pg_aplic;
GRANT SELECT ON TABLE                         desempenho.imovel_subcategoria_abrangencia TO pg_users;

COMMENT ON COLUMN desempenho.imovel_subcategoria_abrangencia.imsa_id                 IS 'Id';
COMMENT ON COLUMN desempenho.imovel_subcategoria_abrangencia.imsa_tmcriacao          IS 'Data de criacao';
COMMENT ON COLUMN desempenho.imovel_subcategoria_abrangencia.imsa_tmultimaalteracao  IS 'Data da atualizacao';
COMMENT ON COLUMN desempenho.imovel_subcategoria_abrangencia.scat_id                 IS 'Id da subcategoria';
COMMENT ON COLUMN desempenho.imovel_subcategoria_abrangencia.imsa_qteconomias        IS 'Quantidade de economias';
COMMENT ON COLUMN desempenho.imovel_subcategoria_abrangencia.imov_id                 IS 'Id do imovel';

CREATE SEQUENCE desempenho.seq_imovel_subcategoria_abrangencia
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 6
  CACHE 1;
ALTER TABLE                   desempenho.seq_imovel_subcategoria_abrangencia OWNER TO gsan_admin;
GRANT ALL ON TABLE            desempenho.seq_imovel_subcategoria_abrangencia TO gsan_admin;
GRANT SELECT, UPDATE ON TABLE desempenho.seq_imovel_subcategoria_abrangencia TO pg_aplic;
GRANT SELECT ON TABLE         desempenho.seq_imovel_subcategoria_abrangencia TO pg_users;



-- //@UNDO
-- SQL to undo the change goes here.

DROP TABLE    desempenho.imovel_subcategoria_abrangencia;
DROP SEQUENCE desempenho.seq_imovel_subcategoria_abrangencia;
