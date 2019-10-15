-- // tabela coluna novos campos recadastramento
-- Migration SQL that makes the change goes here.


INSERT INTO seguranca.tabela_coluna VALUES (nextval('seguranca.seq_tabela_coluna'), 661, now(), 'imac_qtd_nos_fundos', 'Qtd Nos Fundos', 2, 'QtdFundos', null, 2, 2);
INSERT INTO seguranca.tabela_coluna VALUES (nextval('seguranca.seq_tabela_coluna'), 661, now(), 'imac_qtd_nos_altos', 'Qtd Nos Altos', 2, 'QtdAltos', null, 2, 2);
INSERT INTO seguranca.tabela_coluna VALUES (nextval('seguranca.seq_tabela_coluna'), 661, now(), 'imac_individualizacao', 'Individualizacao', 2, 'Indiv', null, 2, 2);

-- //@UNDO
-- SQL to undo the change goes here.

DELETE FROM seguranca.tabela_coluna WHERE tbco_nmcoluna = 'imac_qtd_nos_fundos';
DELETE FROM seguranca.tabela_coluna WHERE tbco_nmcoluna = 'imac_qtd_nos_altos';
DELETE FROM seguranca.tabela_coluna WHERE tbco_nmcoluna = 'imac_individualizacao';
