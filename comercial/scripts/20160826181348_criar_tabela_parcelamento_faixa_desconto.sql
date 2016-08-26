-- // criar_tabela_parcelamento_faixa_desconto
-- Migration SQL that makes the change goes here.
CREATE TABLE cobranca.parcelamento_faixa_desconto
(
  pfds_id                   integer NOT NULL,
  pfds_referencia_minima    integer NOT NULL,
  pfds_referencia_maxima    integer NOT NULL,
  pfds_percentual_desconto  numeric(5,2) NOT NULL,
  pfds_tmcriacao            timestamp without time zone NOT NULL DEFAULT now(),
  pfds_tmultimaalteracao    timestamp without time zone NOT NULL DEFAULT now(),

  CONSTRAINT parcelamento_faixa_desconto_pkey PRIMARY KEY (pfds_id)
)
WITH (
  OIDS=FALSE
);

COMMENT ON COLUMN cobranca.parcelamento_faixa_desconto.pfds_id IS 'id único para identificar o registro'
COMMENT ON COLUMN cobranca.parcelamento_faixa_desconto.pfds_referencia_minima IS 'mês e ano de referência mínima para a faixa'
COMMENT ON COLUMN cobranca.parcelamento_faixa_desconto.pfds_referencia_maxima IS 'mês e ano de referência máxima para a faixa'
COMMENT ON COLUMN cobranca.parcelamento_faixa_desconto.pfds_percentual_desconto IS 'valor de desconto para referências dentro da faixa'
COMMENT ON COLUMN cobranca.parcelamento_faixa_desconto.pfds_tmcriacao IS 'data e hora de criação do registro'
COMMENT ON COLUMN cobranca.parcelamento_faixa_desconto.pfds_percentual_desconto IS 'data e hora de atualização do registro'

ALTER TABLE                                   cobranca.parcelamento_faixa_desconto OWNER TO gsan_admin;
GRANT ALL ON TABLE                            cobranca.parcelamento_faixa_desconto TO gsan_admin;
GRANT SELECT, UPDATE, INSERT, DELETE ON TABLE cobranca.parcelamento_faixa_desconto TO pg_aplic;
GRANT SELECT ON TABLE                         cobranca.parcelamento_faixa_desconto TO pg_users;


CREATE SEQUENCE cobranca.seq_parcelamento_faixa_desconto
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE                   cobranca.seq_parcelamento_faixa_desconto OWNER TO gsan_admin;
GRANT ALL ON TABLE            cobranca.seq_parcelamento_faixa_desconto TO gsan_admin;
GRANT SELECT, UPDATE ON TABLE cobranca.seq_parcelamento_faixa_desconto TO pg_aplic;
GRANT SELECT ON TABLE         cobranca.seq_parcelamento_faixa_desconto TO pg_users;



-- //@UNDO
-- SQL to undo the change goes here.

DROP TABLE    cobranca.parcelamento_faixa_desconto;
DROP SEQUENCE cobranca.seq_parcelamento_faixa_desconto;


