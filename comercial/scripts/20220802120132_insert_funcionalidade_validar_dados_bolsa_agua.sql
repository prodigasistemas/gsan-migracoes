-- // insert_funcionalidade_batch_registrar_boletos.sql
-- Migration SQL that makes the change goes here.

INSERT INTO seguranca.funcionalidade
(fncd_id, modu_id, fncd_dsfuncionalidade, fncd_tmultimaalteracao, fncd_dscaminhomenu, fncd_dscaminhourl, fncd_icpontoentrada, fncd_dsabreviado, fncd_nnordemmenu, fncd_icnovajanela, fncd_icolap, fncg_id, url)
VALUES(nextval('seguranca.seq_funcionalidade'), 8, 'Atualizar Dados Agua Para', now(), null, null, 2, 'AtuAguaPa', 0, 2, 2, null, null);

-- //@UNDO
-- SQL to undo the change goes here.

delete from seguranca.funcionalidade WHERE fncd_dsabreviado = 'AtuAguaPa';

--