-- // nova tabela faixa_valor_consumo
-- Migration SQL that makes the change goes here.

CREATE TABLE financeiro.faixa_valor_consumo
(
    fvc_id integer NOT NULL,
    catg_id integer NOT NULL,
    fvc_vlfaixainicial numeric(13,2) NOT NULL,
    fvc_vlfaixafinal numeric(13,2) NOT NULL,
    fvc_tmultimaalteracao timestamp without time zone NOT NULL DEFAULT now(),
    CONSTRAINT faixa_valor_consumo_pkey PRIMARY KEY (fvc_id),
    CONSTRAINT fk1_faixa_categoria FOREIGN KEY (catg_id)
        REFERENCES cadastro.categoria (catg_id) MATCH SIMPLE
        ON UPDATE RESTRICT
        ON DELETE RESTRICT
)
WITH (
    OIDS = FALSE
)
TABLESPACE pg_default;

ALTER TABLE financeiro.faixa_valor_consumo OWNER to gsan_admin;

GRANT ALL ON TABLE financeiro.faixa_valor_consumo TO gsan_admin;
GRANT DELETE, INSERT, SELECT, UPDATE ON TABLE financeiro.faixa_valor_consumo TO pg_aplic;
GRANT SELECT ON TABLE financeiro.faixa_valor_consumo TO pg_users;

COMMENT ON TABLE financeiro.faixa_valor_consumo IS 'Tabela com as faixas dos valor total da fatura do cliente';
COMMENT ON COLUMN financeiro.faixa_valor_consumo.fvc_id IS 'Id da tabela de faixas';
COMMENT ON COLUMN financeiro.faixa_valor_consumo.catg_id IS 'Id categoria a qual a faixa pertence';
COMMENT ON COLUMN financeiro.faixa_valor_consumo.fvc_vlfaixainicial IS ' Valores iniciais de cada faixa ';
COMMENT ON COLUMN financeiro.faixa_valor_consumo.fvc_vlfaixafinal IS ' Valores iniciais de cada faixa';
COMMENT ON COLUMN financeiro.faixa_valor_consumo.fvc_tmultimaalteracao IS 'Data e Hora da ultima alteracao';
    
CREATE SEQUENCE financeiro.seq_faixa_valor_consumo
    INCREMENT 1
    START 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    CACHE 1;

ALTER SEQUENCE financeiro.seq_faixa_valor_consumo OWNER TO gsan_admin;
GRANT ALL ON SEQUENCE financeiro.seq_faixa_valor_consumo TO gsan_admin;
GRANT SELECT, UPDATE ON SEQUENCE financeiro.seq_faixa_valor_consumo TO pg_aplic;
GRANT SELECT ON SEQUENCE financeiro.seq_faixa_valor_consumo TO pg_users;

INSERT INTO financeiro.faixa_valor_consumo(fvc_id, catg_id, fvc_vlfaixainicial, fvc_vlfaixafinal, fvc_tmultimaalteracao) VALUES (nextval('financeiro.seq_faixa_valor_consumo'), 1,0.00,50.00,'2020-11-25');
INSERT INTO financeiro.faixa_valor_consumo(fvc_id, catg_id, fvc_vlfaixainicial, fvc_vlfaixafinal, fvc_tmultimaalteracao) VALUES (nextval('financeiro.seq_faixa_valor_consumo'), 1,50.01,100.00,'2020-11-25');
INSERT INTO financeiro.faixa_valor_consumo(fvc_id, catg_id, fvc_vlfaixainicial, fvc_vlfaixafinal, fvc_tmultimaalteracao) VALUES (nextval('financeiro.seq_faixa_valor_consumo'), 1,100.01,200.00,'2020-11-25');
INSERT INTO financeiro.faixa_valor_consumo(fvc_id, catg_id, fvc_vlfaixainicial, fvc_vlfaixafinal, fvc_tmultimaalteracao) VALUES (nextval('financeiro.seq_faixa_valor_consumo'), 1,200.01,300.00,'2020-11-25');
INSERT INTO financeiro.faixa_valor_consumo(fvc_id, catg_id, fvc_vlfaixainicial, fvc_vlfaixafinal, fvc_tmultimaalteracao) VALUES (nextval('financeiro.seq_faixa_valor_consumo'), 1,300.01,400.00,'2020-11-25');
INSERT INTO financeiro.faixa_valor_consumo(fvc_id, catg_id, fvc_vlfaixainicial, fvc_vlfaixafinal, fvc_tmultimaalteracao) VALUES (nextval('financeiro.seq_faixa_valor_consumo'), 1,400.01,500.00,'2020-11-25');
INSERT INTO financeiro.faixa_valor_consumo(fvc_id, catg_id, fvc_vlfaixainicial, fvc_vlfaixafinal, fvc_tmultimaalteracao) VALUES (nextval('financeiro.seq_faixa_valor_consumo'), 1,500.01,1000.00,'2020-11-25');
INSERT INTO financeiro.faixa_valor_consumo(fvc_id, catg_id, fvc_vlfaixainicial, fvc_vlfaixafinal, fvc_tmultimaalteracao) VALUES (nextval('financeiro.seq_faixa_valor_consumo'), 1,1000.01,999999999.99,'2020-11-25');
INSERT INTO financeiro.faixa_valor_consumo(fvc_id, catg_id, fvc_vlfaixainicial, fvc_vlfaixafinal, fvc_tmultimaalteracao) VALUES (nextval('financeiro.seq_faixa_valor_consumo'), 2,0.00,50.00,'2020-11-25');
INSERT INTO financeiro.faixa_valor_consumo(fvc_id, catg_id, fvc_vlfaixainicial, fvc_vlfaixafinal, fvc_tmultimaalteracao) VALUES (nextval('financeiro.seq_faixa_valor_consumo'), 2,50.01,100.00,'2020-11-25');
INSERT INTO financeiro.faixa_valor_consumo(fvc_id, catg_id, fvc_vlfaixainicial, fvc_vlfaixafinal, fvc_tmultimaalteracao) VALUES (nextval('financeiro.seq_faixa_valor_consumo'), 2,100.01,200.00,'2020-11-25');
INSERT INTO financeiro.faixa_valor_consumo(fvc_id, catg_id, fvc_vlfaixainicial, fvc_vlfaixafinal, fvc_tmultimaalteracao) VALUES (nextval('financeiro.seq_faixa_valor_consumo'), 2,200.01,300.00,'2020-11-25');
INSERT INTO financeiro.faixa_valor_consumo(fvc_id, catg_id, fvc_vlfaixainicial, fvc_vlfaixafinal, fvc_tmultimaalteracao) VALUES (nextval('financeiro.seq_faixa_valor_consumo'), 2,300.01,400.00,'2020-11-25');
INSERT INTO financeiro.faixa_valor_consumo(fvc_id, catg_id, fvc_vlfaixainicial, fvc_vlfaixafinal, fvc_tmultimaalteracao) VALUES (nextval('financeiro.seq_faixa_valor_consumo'), 2,400.01,500.00,'2020-11-25');
INSERT INTO financeiro.faixa_valor_consumo(fvc_id, catg_id, fvc_vlfaixainicial, fvc_vlfaixafinal, fvc_tmultimaalteracao) VALUES (nextval('financeiro.seq_faixa_valor_consumo'), 2,500.01,1000.00,'2020-11-25');
INSERT INTO financeiro.faixa_valor_consumo(fvc_id, catg_id, fvc_vlfaixainicial, fvc_vlfaixafinal, fvc_tmultimaalteracao) VALUES (nextval('financeiro.seq_faixa_valor_consumo'), 2,1000.01,999999999.99,'2020-11-25');
INSERT INTO financeiro.faixa_valor_consumo(fvc_id, catg_id, fvc_vlfaixainicial, fvc_vlfaixafinal, fvc_tmultimaalteracao) VALUES (nextval('financeiro.seq_faixa_valor_consumo'), 3,0.00,50.00,'2020-11-25');
INSERT INTO financeiro.faixa_valor_consumo(fvc_id, catg_id, fvc_vlfaixainicial, fvc_vlfaixafinal, fvc_tmultimaalteracao) VALUES (nextval('financeiro.seq_faixa_valor_consumo'), 3,50.01,100.00,'2020-11-25');
INSERT INTO financeiro.faixa_valor_consumo(fvc_id, catg_id, fvc_vlfaixainicial, fvc_vlfaixafinal, fvc_tmultimaalteracao) VALUES (nextval('financeiro.seq_faixa_valor_consumo'), 3,100.01,200.00,'2020-11-25');
INSERT INTO financeiro.faixa_valor_consumo(fvc_id, catg_id, fvc_vlfaixainicial, fvc_vlfaixafinal, fvc_tmultimaalteracao) VALUES (nextval('financeiro.seq_faixa_valor_consumo'), 3,200.01,300.00,'2020-11-25');
INSERT INTO financeiro.faixa_valor_consumo(fvc_id, catg_id, fvc_vlfaixainicial, fvc_vlfaixafinal, fvc_tmultimaalteracao) VALUES (nextval('financeiro.seq_faixa_valor_consumo'), 3,300.01,400.00,'2020-11-25');
INSERT INTO financeiro.faixa_valor_consumo(fvc_id, catg_id, fvc_vlfaixainicial, fvc_vlfaixafinal, fvc_tmultimaalteracao) VALUES (nextval('financeiro.seq_faixa_valor_consumo'), 3,400.01,500.00,'2020-11-25');
INSERT INTO financeiro.faixa_valor_consumo(fvc_id, catg_id, fvc_vlfaixainicial, fvc_vlfaixafinal, fvc_tmultimaalteracao) VALUES (nextval('financeiro.seq_faixa_valor_consumo'), 3,500.01,1000.00,'2020-11-25');
INSERT INTO financeiro.faixa_valor_consumo(fvc_id, catg_id, fvc_vlfaixainicial, fvc_vlfaixafinal, fvc_tmultimaalteracao) VALUES (nextval('financeiro.seq_faixa_valor_consumo'), 3,1000.01,999999999.99,'2020-11-25');
INSERT INTO financeiro.faixa_valor_consumo(fvc_id, catg_id, fvc_vlfaixainicial, fvc_vlfaixafinal, fvc_tmultimaalteracao) VALUES (nextval('financeiro.seq_faixa_valor_consumo'), 4,0.00,50.00,'2020-11-25');
INSERT INTO financeiro.faixa_valor_consumo(fvc_id, catg_id, fvc_vlfaixainicial, fvc_vlfaixafinal, fvc_tmultimaalteracao) VALUES (nextval('financeiro.seq_faixa_valor_consumo'), 4,50.01,100.00,'2020-11-25');
INSERT INTO financeiro.faixa_valor_consumo(fvc_id, catg_id, fvc_vlfaixainicial, fvc_vlfaixafinal, fvc_tmultimaalteracao) VALUES (nextval('financeiro.seq_faixa_valor_consumo'), 4,100.01,200.00,'2020-11-25');
INSERT INTO financeiro.faixa_valor_consumo(fvc_id, catg_id, fvc_vlfaixainicial, fvc_vlfaixafinal, fvc_tmultimaalteracao) VALUES (nextval('financeiro.seq_faixa_valor_consumo'), 4,200.01,300.00,'2020-11-25');
INSERT INTO financeiro.faixa_valor_consumo(fvc_id, catg_id, fvc_vlfaixainicial, fvc_vlfaixafinal, fvc_tmultimaalteracao) VALUES (nextval('financeiro.seq_faixa_valor_consumo'), 4,300.01,400.00,'2020-11-25');
INSERT INTO financeiro.faixa_valor_consumo(fvc_id, catg_id, fvc_vlfaixainicial, fvc_vlfaixafinal, fvc_tmultimaalteracao) VALUES (nextval('financeiro.seq_faixa_valor_consumo'), 4,400.01,500.00,'2020-11-25');
INSERT INTO financeiro.faixa_valor_consumo(fvc_id, catg_id, fvc_vlfaixainicial, fvc_vlfaixafinal, fvc_tmultimaalteracao) VALUES (nextval('financeiro.seq_faixa_valor_consumo'), 4,500.01,1000.00,'2020-11-25');
INSERT INTO financeiro.faixa_valor_consumo(fvc_id, catg_id, fvc_vlfaixainicial, fvc_vlfaixafinal, fvc_tmultimaalteracao) VALUES (nextval('financeiro.seq_faixa_valor_consumo'), 4,1000.01,999999999.99,'2020-11-25') 

-- //@UNDO
-- SQL to undo the change goes here.

DROP SEQUENCE financeiro.seq_faixa_valor_consumo;

DROP TABLE financeiro.faixa_valor_consumo;
