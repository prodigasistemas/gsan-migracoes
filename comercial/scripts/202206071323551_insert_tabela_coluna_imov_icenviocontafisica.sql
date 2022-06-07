-- // insert_das credenciais das aplicações que terão acesso a GSAN-API 
-- Migration SQL that makes the change goes here.

INSERT INTO seguranca.tabela_coluna(
	tbco_id, tabe_id, tbco_tmultimaalteracao, tbco_nmcoluna, tbco_dscoluna, tbco_icprimarykey, tbco_nmabreviado, atrb_id, tbco_icpoderetificarconta, tbco_icatucadastral)
	VALUES (nextval('seguranca.seq_tabela_coluna'), 52, now(), 'imov_icenviocontafisica', 'imov_icenviocontafisica', 2, null, null, 2, 2);
	
-- //@UNDO
-- SQL to undo the change goes here.

	DELETE FROM seguranca.tabela_coluna WHERE tbco_nmcoluna = 'imov_icenviocontafisica';