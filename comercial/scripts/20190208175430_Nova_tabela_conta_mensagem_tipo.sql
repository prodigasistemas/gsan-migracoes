-- // Nova tabela conta_mensagem_tipo
-- Migration SQL that makes the change goes here.

CREATE TABLE faturamento.conta_mensagem_tipo
(
  cmtp_id integer NOT NULL,
  cmtp_dstipo character varying(50),
  cmtp_icuso smallint,
  cmtp_tmultimaalteracao timestamp without time zone NOT NULL DEFAULT now(),
  CONSTRAINT faturamento_conta_mensagem_tipo_pkey PRIMARY KEY (cmtp_id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE faturamento.conta_mensagem_tipo
  OWNER TO gsan_admin;
GRANT ALL ON TABLE faturamento.conta_mensagem_tipo TO gsan_admin;
GRANT SELECT, UPDATE, INSERT, DELETE ON TABLE faturamento.conta_mensagem_tipo TO pg_aplic;
GRANT SELECT ON TABLE faturamento.conta_mensagem_tipo TO pg_users;


insert into faturamento.conta_mensagem_tipo values (1, 'DEBITO', 1, now());
insert into faturamento.conta_mensagem_tipo values (2, 'QUITACAO', 1, now());
    insert into faturamento.conta_mensagem_tipo values (3, 'MUDANCA FATURAMENTO', 1, now());
-- //@UNDO
-- SQL to undo the change goes here.

drop table  faturamento.conta_mensagem_tipo;
