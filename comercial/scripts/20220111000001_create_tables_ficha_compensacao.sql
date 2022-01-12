-- // criar tabela registros de ficha de compensacao bb
-- Migration SQL that makes the change goes here.
/*CREATE SEQUENCE arrecadacao.seq_ficha_compensacao
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
*/
CREATE TABLE arrecadacao.ficha_compensacao
(
  fico_id integer NOT NULL,
  fico_idconv character varying(7),
  fico_nuca character varying(2),
  fico_nuvc character varying(2),
  fico_como character varying(1),
  fico_dtem character varying(10),
  fico_dtve character varying(10),
  fico_vlor character varying(100),
  fico_coac character varying(1),
  fico_cott character varying(2),
  fico_iprp character varying(1),
  fico_nutc character varying(20),
  imov_id integer NOT NULL,
  clie_id integer NOT NULL,

  CONSTRAINT ficha_compensacao_pkey PRIMARY KEY (fico_id),
  CONSTRAINT fk1_cliente FOREIGN KEY (clie_id)
  REFERENCES cadastro.cliente (clie_id) MATCH SIMPLE   
);

ALTER TABLE arrecadacao.ficha_compensacao OWNER TO gsan_admin;
GRANT ALL ON TABLE arrecadacao.ficha_compensacao TO gsan_admin;
GRANT SELECT, UPDATE, INSERT, DELETE ON TABLE arrecadacao.ficha_compensacao TO role_aplic;
GRANT SELECT ON TABLE arrecadacao.ficha_compensacao TO role_users;


-- //@UNDO
-- SQL to undo the change goes here.
--DROP SEQUENCE arrecadacao.seq_boleto_info;
DROP TABLE arrecadacao.ficha_compensacao;
