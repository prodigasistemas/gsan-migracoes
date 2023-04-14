-- // insert into cadastro ocorrencia recusa nis
-- Migration SQL that makes the change goes here.

INSERT INTO cadastro.cadastro_ocorrencia 
VALUES (nextval('cadastro.seq_cadastro_ocorrencia'), 'RECUSA NIS', 1, now(), 2, 2, 2);


-- //@UNDO
-- SQL to undo the change goes here.

DELETE FROM cadastro.cadastro_ocorrencia WHERE cocr_dscadastroocorrencia LIKE 'RECUSA NIS';
