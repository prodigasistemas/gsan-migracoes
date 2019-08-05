-- // coluna_observacao_na_tab_col_atlz_cadastral
-- Migration SQL that makes the change goes here.

INSERT INTO seguranca.tabela_coluna (tbco_id, 
                                      tabe_id, 
                                      tbco_tmultimaalteracao,
                                      tbco_nmcoluna,
                                      tbco_dscoluna,
                                      tbco_icprimarykey,
                                      tbco_nmabreviado,
                                      atrb_id,
                                      tbco_icpoderetificarconta,
                                      tbco_icatucadastral)
    VALUES (nextval('seguranca.seq_tab_atlz_cadastral'), 
            (select tabe_id from seguranca.tabela where lower(tabe_nmtabela) = 'cadastro.imovel_atlz_cadastral'), 
            now(), 
            'imre_dsobservacaotegoria', 
            'Observacao da categoria',
            2, 
            'imre_dsobservacaotegoria', 
            null, 
            2, 
            2);


-- //@UNDO
-- SQL to undo the change goes here.

delete from seguranca.tabela_coluna cc
where 1 = 1
    and cc.tbco_nmcoluna = 'imre_dsobservacaotegoria'
    and cc.tabe_id = (select tabe_id from seguranca.tabela where lower(tabe_nmtabela) = 'cadastro.imovel_atlz_cadastral')
;

