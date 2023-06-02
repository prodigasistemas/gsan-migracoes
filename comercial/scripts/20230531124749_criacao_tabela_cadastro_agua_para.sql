-- // criacao_tabela_cadastro_agua_para
-- Migration SQL that makes the change goes here.

CREATE SEQUENCE cadastro.seq_cadastro_agua_para
 INCREMENT 1
 MINVALUE 1
 MAXVALUE 9223372036854775807
 START 1
 CACHE 1;

CREATE TABLE cadastro.cadastro_agua_para 
(
caap_id integer NOT null,
imov_id integer NOT null,
caap_nncpf varchar(11),
caap_nnrg varchar(13),
caap_nntel varchar(15),
caap_stca integer NOT null,
caap_nnnis varchar(11),
caap_nmnome varchar(255)
);

-- //@UNDO
-- SQL to undo the change goes here.

DROP table cadastro.cadastro_agua_para;
DROP sequence cadastro.seq_cadastro_agua_para

