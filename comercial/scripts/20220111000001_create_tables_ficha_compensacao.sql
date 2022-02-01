-- // criar tabela registros de ficha de compensacao bb
-- Migration SQL that makes the change goes here.
CREATE SEQUENCE faturamento.seq_ficha_compensacao
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;

CREATE TABLE faturamento.ficha_compensacao
(
  fico_id integer NOT NULL DEFAULT nextval('faturamento.seq_ficha_compensacao'),
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
  cnta_id integer NOT NULL,

  CONSTRAINT ficha_compensacao_pkey PRIMARY KEY (fico_id),
  CONSTRAINT fk1_cliente FOREIGN KEY (clie_id)
  REFERENCES cadastro.cliente (clie_id) MATCH SIMPLE,
  CONSTRAINT fk2_Imovel FOREIGN KEY (imov_id)
  REFERENCES cadastro.imovel (imov_id) MATCH SIMPLE,
  CONSTRAINT fk3_Conta FOREIGN KEY (cnta_id)
  REFERENCES faturamento.conta (cnta_id) MATCH SIMPLE 
);

-- //@UNDO
-- SQL to undo the change goes here.
--DROP SEQUENCE faturamento.seq_ficha_compensacao;
DROP TABLE faturamento.ficha_compensacao;