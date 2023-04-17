-- // insert into tabela coluna leitura hidrometro
-- Migration SQL that makes the change goes here.

INSERT INTO seguranca.tabela_coluna (tbco_id, tabe_id,tbco_tmultimaalteracao,tbco_nmcoluna,tbco_dscoluna,tbco_icprimarykey,tbco_icpoderetificarconta,tbco_icatucadastral)
	VALUES (nextval('seguranca.seq_tabela_coluna'),661,'now()','imac_nnleiturahidrometro','Leitura do Hidrometro',2,2,2);

-- //@UNDO
-- SQL to undo the change goes here.

DELETE FROM seguranca.tabela_coluna WHERE tbco_nmcoluna LIKE 'imac_nnleiturahidrometro';