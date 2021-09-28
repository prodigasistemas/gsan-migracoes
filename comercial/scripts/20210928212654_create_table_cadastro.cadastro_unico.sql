-- // create table cadastro.cadastro_unico
-- Migration SQL that makes the change goes here.

CREATE TABLE cadastro.cadastro_unico (
    cadu_id int4 NOT NULL,
    cadu_nnnis varchar(11) NOT NULL,
    cadu_nmnome varchar(80) NOT NULL,
    cadu_dtnascimento date NULL,
    cadu_sexo varchar(1) NULL,
    cadu_nncpf varchar(11) NULL,
    cadu_dtcadastramento varchar(7) NOT NULL,
    cadu_cdibge varchar(10) NULL,
    cadu_tminclusao timestamp NOT NULL DEFAULT now(),
    cadu_tmexclusao timestamp NULL,
    cadu_tmultimaalteracao timestamp NOT NULL DEFAULT now(),
    CONSTRAINT cadastro_unico_pkey PRIMARY KEY (cadu_id)
);
CREATE INDEX xfk1_cadastro_unico ON cadastro.cadastro_unico USING btree (cadu_nnnis);

CREATE SEQUENCE cadastro.seq_cadastro_unico
    INCREMENT BY 1
    MINVALUE 1
    MAXVALUE 9223372036854775807
    START 100;

-- //@UNDO
-- SQL to undo the change goes here.

DROP SEQUENCE cadastro.seq_cadastro_unico;
DROP TABLE cadastro.cadastro_unico;
