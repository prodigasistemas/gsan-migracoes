-- // criar tabela registros de ficha de compensacao bb
-- Migration SQL that makes the change goes here.
/*CREATE SEQUENCE arrecadacao.seq_ficha_compensacao
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
*/
CREATE TABLE arrecadacao.pagador
(
  paga_id integer NOT NULL,
  paga_tiin character varying(1),
  paga_nuin character varying(14),
  paga_nome character varying(300),
  paga_ende character varying(300),
  paga_cep character varying(8),
  paga_cidade character varying(50),
  paga_bairro character varying(50),
  paga_uf character varying(2),
  
  CONSTRAINT pagador_pkey PRIMARY KEY (paga_id)
);

ALTER TABLE arrecadacao.pagador OWNER TO gsan_admin;
GRANT ALL ON TABLE arrecadacao.pagador TO gsan_admin;
GRANT SELECT, UPDATE, INSERT, DELETE ON TABLE arrecadacao.pagador TO role_aplic;
GRANT SELECT ON TABLE arrecadacao.pagador TO role_users;


-- //@UNDO
-- SQL to undo the change goes here.
--DROP SEQUENCE arrecadacao.seq_boleto_info;
DROP TABLE arrecadacao.pagador;
