-- // criar tabela registros de ficha de compensacao
-- Migration SQL that makes the change goes here.

CREATE SEQUENCE arrecadacao.seq_ficha_compensacao
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1; 
ALTER TABLE arrecadacao.seq_ficha_compensacao OWNER TO gsan_admin;
CREATE TABLE arrecadacao.ficha_compensacao
(
  fico_id integer NOT NULL DEFAULT nextval('arrecadacao.seq_ficha_compensacao'),
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
  cnta_id integer,
  gpag_id integer,
  fico_tmultimaalteracao timestamp without time zone NOT NULL DEFAULT now(),
  CONSTRAINT ficha_compensacao_pkey PRIMARY KEY (fico_id),
  CONSTRAINT fk1_cliente FOREIGN KEY (clie_id)
      REFERENCES cadastro.cliente (clie_id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT fk2_imovel FOREIGN KEY (imov_id)
      REFERENCES cadastro.imovel (imov_id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT fk3_conta FOREIGN KEY (cnta_id)
      REFERENCES faturamento.conta (cnta_id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT fk4_guia_pagamento FOREIGN KEY (gpag_id)
      REFERENCES faturamento.guia_pagamento (gpag_id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION    
)
WITH (
  OIDS=FALSE
);
ALTER TABLE arrecadacao.ficha_compensacao OWNER TO gsan_admin;
INSERT INTO seguranca.parametro VALUES (14, 'URL_ENTRADA_PARCELAMENTO', 'http://api.cosanpa.pa.gov.br/entrada_parcelamento/');

-- //@UNDO
-- SQL to undo the change goes here.

DROP TABLE arrecadacao.ficha_compensacao;
DROP SEQUENCE arrecadacao.seq_ficha_compensacao;