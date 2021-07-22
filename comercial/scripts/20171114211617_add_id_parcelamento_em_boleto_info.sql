-- // add id parcelamento em boleto info
-- Migration SQL that makes the change goes here.

CREATE SEQUENCE arrecadacao.seq_boleto_info
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE arrecadacao.seq_boleto_info
  OWNER TO gsan_admin;
GRANT SELECT, UPDATE ON SEQUENCE arrecadacao.seq_boleto_info TO gsan_admin;
GRANT SELECT, UPDATE ON SEQUENCE arrecadacao.seq_boleto_info TO role_aplic;
GRANT SELECT ON SEQUENCE arrecadacao.seq_boleto_info TO role_users;

ALTER TABLE arrecadacao.boleto_info DROP CONSTRAINT boleto_info_pkey;
ALTER TABLE arrecadacao.boleto_info DROP CONSTRAINT fk1_parcelamento;
ALTER TABLE arrecadacao.boleto_info ALTER COLUMN gpag_id DROP NOT NULL;
ALTER TABLE arrecadacao.boleto_info ADD COLUMN parc_id integer;
ALTER TABLE arrecadacao.boleto_info ADD COLUMN boin_id integer DEFAULT nextval('arrecadacao.seq_boleto_info');
ALTER TABLE arrecadacao.boleto_info ADD PRIMARY KEY (boin_id);
ALTER TABLE arrecadacao.boleto_info ADD CONSTRAINT fk1_parcelamento_id FOREIGN KEY (parc_id)
      REFERENCES cobranca.parcelamento (parc_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT


-- //@UNDO
-- SQL to undo the change goes here.
ALTER TABLE arrecadacao.boleto_info DROP CONSTRAINT boleto_info_pkey;
ALTER TABLE arrecadacao.boleto_info DROP COLUMN boin_id;
ALTER TABLE arrecadacao.boleto_info DROP CONSTRAINT fk1_parcelamento_id;
ALTER TABLE arrecadacao.boleto_info DROP COLUMN parc_id;
ALTER TABLE arrecadacao.boleto_info ADD PRIMARY KEY (gpag_id);
ALTER TABLE arrecadacao.boleto_info ADD CONSTRAINT fk1_parcelamento FOREIGN KEY (gpag_id)
      REFERENCES faturamento.guia_pagamento (gpag_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT;
DROP SEQUENCE arrecadacao.seq_boleto_info;