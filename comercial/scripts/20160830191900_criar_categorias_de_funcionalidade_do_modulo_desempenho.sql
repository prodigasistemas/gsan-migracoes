-- // criar categorias de funcionalidade do modulo desempenho
-- Migration SQL that makes the change goes here.

INSERT INTO seguranca.funcionalidade_categoria (fncg_id, fncg_dsfuncionalidadecategoria, fncg_nnordem, fncg_idsuperior, modu_id, fncg_icuso, fncg_tmultimaalteracao) 
VALUES (145, 'Desempenho', 13, 9, 13, 1, '2016-08-31 10:47:20.625866');

INSERT INTO seguranca.funcionalidade_categoria (fncg_id, fncg_dsfuncionalidadecategoria, fncg_nnordem, fncg_idsuperior, modu_id, fncg_icuso, fncg_tmultimaalteracao) 
VALUES (146, 'Contrato de Medicao', 1, 145, 13, 1, '2016-08-31 10:47:20.625866');

INSERT INTO seguranca.funcionalidade_categoria (fncg_id, fncg_dsfuncionalidadecategoria, fncg_nnordem, fncg_idsuperior, modu_id, fncg_icuso, fncg_tmultimaalteracao) 
VALUES (147, 'Acoes', 2, 145, 13, 1, '2016-08-31 10:47:20.625866');

INSERT INTO seguranca.funcionalidade_categoria (fncg_id, fncg_dsfuncionalidadecategoria, fncg_nnordem, fncg_idsuperior, modu_id, fncg_icuso, fncg_tmultimaalteracao) 
VALUES (148, 'Arquivo de Retorno', 3, 145, 13, 1, '2016-08-31 10:47:20.625866');

INSERT INTO seguranca.funcionalidade_categoria (fncg_id, fncg_dsfuncionalidadecategoria, fncg_nnordem, fncg_idsuperior, modu_id, fncg_icuso, fncg_tmultimaalteracao) 
VALUES (149, 'Arquivo de Hidrometros', 4, 145, 13, 1, '2016-08-31 10:47:20.625866');


-- //@UNDO
-- SQL to undo the change goes here.

delete from seguranca.funcionalidade_categoria where fncg_id in (145,146,147,148,149)
