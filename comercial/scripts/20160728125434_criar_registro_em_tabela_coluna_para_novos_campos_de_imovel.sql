-- // criar registro em tabela_coluna para novos campos de imovel
-- Migration SQL that makes the change goes here.

alter sequence seguranca.seq_tabela_coluna restart with 1000113;

insert into seguranca.tabela_coluna (tbco_id, tabe_id, tbco_tmultimaalteracao, tbco_nmcoluna, tbco_dscoluna, tbco_icprimarykey, tbco_nmabreviado) values (nextval('seguranca.seq_tabela_coluna'),(select tabe_id from seguranca.tabela where tabe_nmtabela = 'cadastro.imovel_atlz_cadastral'), now(), 'imac_classe_social'                 , 'Classe Social'                    , 2, 'ClasseSoci' );
insert into seguranca.tabela_coluna (tbco_id, tabe_id, tbco_tmultimaalteracao, tbco_nmcoluna, tbco_dscoluna, tbco_icprimarykey, tbco_nmabreviado) values (nextval('seguranca.seq_tabela_coluna'),(select tabe_id from seguranca.tabela where tabe_nmtabela = 'cadastro.imovel_atlz_cadastral'), now(), 'imac_quantidade_animais_domesticos' , 'Quantidade de animais domesticos' , 2, 'QtdAninDom' );
insert into seguranca.tabela_coluna (tbco_id, tabe_id, tbco_tmultimaalteracao, tbco_nmcoluna, tbco_dscoluna, tbco_icprimarykey, tbco_nmabreviado) values (nextval('seguranca.seq_tabela_coluna'),(select tabe_id from seguranca.tabela where tabe_nmtabela = 'cadastro.imovel_atlz_cadastral'), now(), 'imac_vol_cisterna'                  , 'Volume cisterna'                  , 2, 'VolCistern' );
insert into seguranca.tabela_coluna (tbco_id, tabe_id, tbco_tmultimaalteracao, tbco_nmcoluna, tbco_dscoluna, tbco_icprimarykey, tbco_nmabreviado) values (nextval('seguranca.seq_tabela_coluna'),(select tabe_id from seguranca.tabela where tabe_nmtabela = 'cadastro.imovel_atlz_cadastral'), now(), 'imac_vol_cx_dagua'                  , 'Volume caixa dagua'               , 2, 'VolCxDAgua' );
insert into seguranca.tabela_coluna (tbco_id, tabe_id, tbco_tmultimaalteracao, tbco_nmcoluna, tbco_dscoluna, tbco_icprimarykey, tbco_nmabreviado) values (nextval('seguranca.seq_tabela_coluna'),(select tabe_id from seguranca.tabela where tabe_nmtabela = 'cadastro.imovel_atlz_cadastral'), now(), 'imac_tipo_uso'                      , 'Tipo de uso'                      , 2, 'TipoUso'    );
insert into seguranca.tabela_coluna (tbco_id, tabe_id, tbco_tmultimaalteracao, tbco_nmcoluna, tbco_dscoluna, tbco_icprimarykey, tbco_nmabreviado) values (nextval('seguranca.seq_tabela_coluna'),(select tabe_id from seguranca.tabela where tabe_nmtabela = 'cadastro.imovel_atlz_cadastral'), now(), 'imac_acesso_hidrometro'             , 'Acesso ao hidrometro'             , 2, 'AcessHidro' );
insert into seguranca.tabela_coluna (tbco_id, tabe_id, tbco_tmultimaalteracao, tbco_nmcoluna, tbco_dscoluna, tbco_icprimarykey, tbco_nmabreviado) values (nextval('seguranca.seq_tabela_coluna'),(select tabe_id from seguranca.tabela where tabe_nmtabela = 'cadastro.imovel_atlz_cadastral'), now(), 'imac_qtd_economias_social'          , 'Qtd economias social'             , 2, 'QtdEconSoc' );
insert into seguranca.tabela_coluna (tbco_id, tabe_id, tbco_tmultimaalteracao, tbco_nmcoluna, tbco_dscoluna, tbco_icprimarykey, tbco_nmabreviado) values (nextval('seguranca.seq_tabela_coluna'),(select tabe_id from seguranca.tabela where tabe_nmtabela = 'cadastro.imovel_atlz_cadastral'), now(), 'imac_qtd_economias_outra'           , 'Qtd economias outras'             , 2, 'QtdEconOut' );


-- //@UNDO
-- SQL to undo the change goes here.

delete from seguranca.tabela_coluna where tbco_nmcoluna = 'imac_classe_social'                ;
delete from seguranca.tabela_coluna where tbco_nmcoluna = 'imac_quantidade_animais_domesticos';
delete from seguranca.tabela_coluna where tbco_nmcoluna = 'imac_vol_cisterna'                 ;
delete from seguranca.tabela_coluna where tbco_nmcoluna = 'imac_vol_cx_dagua'                 ;
delete from seguranca.tabela_coluna where tbco_nmcoluna = 'imac_tipo_uso'                     ;
delete from seguranca.tabela_coluna where tbco_nmcoluna = 'imac_acesso_hidrometro'            ;
delete from seguranca.tabela_coluna where tbco_nmcoluna = 'imac_qtd_economias_social'         ;
delete from seguranca.tabela_coluna where tbco_nmcoluna = 'imac_qtd_economias_outra'          ;