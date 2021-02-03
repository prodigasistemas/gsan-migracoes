-- // nova tabela cobranca_acao_ativ_cmd_subcategoria
-- Migration SQL that makes the change goes here.

CREATE TABLE cobranca.cobranca_acao_ativ_cmd_subcategoria
(
    cacs_id integer NOT NULL,
    cacm_id integer NOT NULL,
    scat_id integer NOT NULL,
    cacs_tmultimaalteracao timestamp without time zone NOT NULL DEFAULT now(),
    CONSTRAINT cobranca_acao_ativ_cmd_subcategoria_pkey PRIMARY KEY (cacs_id),
    CONSTRAINT fk1_cobranca_acao_ativ_cmd_subcategoria FOREIGN KEY (cacm_id)
        REFERENCES cobranca.cobranca_acao_ativ_cmd (cacm_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fk2_cobranca_acao_ativ_cmd_subcategoria FOREIGN KEY (scat_id)
        REFERENCES cadastro.subcategoria (scat_id) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE cobranca.cobranca_acao_ativ_cmd_subcategoria OWNER to gsan_admin;

GRANT ALL ON TABLE cobranca.cobranca_acao_ativ_cmd_subcategoria TO gsan_admin;

GRANT DELETE, INSERT, SELECT, UPDATE ON TABLE cobranca.cobranca_acao_ativ_cmd_subcategoria TO pg_aplic;

GRANT SELECT ON TABLE cobranca.cobranca_acao_ativ_cmd_subcategoria TO pg_users;

COMMENT ON COLUMN cobranca.cobranca_acao_ativ_cmd_subcategoria.cacs_id IS 'Id da Tabela';
COMMENT ON COLUMN cobranca.cobranca_acao_ativ_cmd_subcategoria.cacm_id IS 'Id do Comando Eventual';
COMMENT ON COLUMN cobranca.cobranca_acao_ativ_cmd_subcategoria.scat_id IS 'Id da Subcategoria';
COMMENT ON COLUMN cobranca.cobranca_acao_ativ_cmd_subcategoria.cacs_tmultimaalteracao IS 'Data e Hora da Ultima Alteracao';

CREATE SEQUENCE cobranca.seq_cobranca_acao_ativ_cmd_subcategoria
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE cobranca.seq_cobranca_acao_ativ_cmd_subcategoria OWNER TO gsan_admin;

GRANT SELECT, UPDATE ON SEQUENCE cobranca.seq_cobranca_acao_ativ_cmd_subcategoria TO gsan_admin;

GRANT SELECT, UPDATE ON SEQUENCE cobranca.seq_cobranca_acao_ativ_cmd_subcategoria TO pg_aplic;

GRANT SELECT ON SEQUENCE cobranca.seq_cobranca_acao_ativ_cmd_subcategoria TO pg_users;

INSERT INTO cobranca.motivo_nao_ger_doc_cobr VALUES (28, 'SUBCATEGORIA NAO ATENDE CRITERIO', 1, now());

-- //@UNDO
-- SQL to undo the change goes here.

DELETE FROM cobranca.motivo_nao_ger_doc_cobr WHERE mngd_id = 28;

DROP SEQUENCE cobranca.seq_cobranca_acao_ativ_cmd_subcategoria;

DROP TABLE cobranca.cobranca_acao_ativ_cmd_subcategoria;
