-- // criar tabela registros de boletos bb
-- Migration SQL that makes the change goes here.
/*CREATE SEQUENCE arrecadacao.seq_boleto_info
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
*/
CREATE TABLE arrecadacao.boleto_info
(
  gpag_id integer NOT NULL,
  boin_idconv character varying(6),
  boin_reftran character varying(17),
  boin_cpfcnpj character varying(14),
  boin_nome character varying(300),
  boin_endereco character varying(300),
  boin_uf character varying(2),
  boin_cep character varying(8),
  boin_cidade character varying(50),
  boin_indicadorpessoa character varying(1),
  boin_tpduplicata character varying(2),
  boin_tppagamento character varying(2),
  boin_valor character varying(15),
  boin_dtvencimento character varying(8),
  boin_urlretorno character varying(1000),
  boin_mensagemloja text,
  boin_linkboleto text,
  boin_tmultimaalteracao timestamp DEFAULT now(),
  CONSTRAINT boleto_info_pkey PRIMARY KEY (gpag_id),
  CONSTRAINT fk1_parcelamento FOREIGN KEY (gpag_id)
      REFERENCES faturamento.guia_pagamento (gpag_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT
);

ALTER TABLE arrecadacao.boleto_info OWNER TO gsan_admin;
GRANT ALL ON TABLE arrecadacao.boleto_info TO gsan_admin;
GRANT SELECT, UPDATE, INSERT, DELETE ON TABLE arrecadacao.boleto_info TO pg_aplic;
GRANT SELECT ON TABLE arrecadacao.boleto_info TO pg_users;


-- //@UNDO
-- SQL to undo the change goes here.
--DROP SEQUENCE arrecadacao.seq_boleto_info;
DROP TABLE arrecadacao.boleto_info;

