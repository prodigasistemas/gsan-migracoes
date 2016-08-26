-- // inserir_tabela_parcelamento_faixas_desconto
-- Migration SQL that makes the change goes here.

INSERT INTO cobranca.parcelamento_faixa_desconto(pfds_id, pfds_referencia_minima, pfds_referencia_maxima, pfds_percentual_desconto, pfds_tmcriacao, pfds_tmultimaalteracao)
VALUES (1, 200607, 200706, 90.00, now(), now());

INSERT INTO cobranca.parcelamento_faixa_desconto(pfds_id, pfds_referencia_minima, pfds_referencia_maxima, pfds_percentual_desconto, pfds_tmcriacao, pfds_tmultimaalteracao)
VALUES (2, 200707, 200906, 75.00, now(), now());

INSERT INTO cobranca.parcelamento_faixa_desconto(pfds_id, pfds_referencia_minima, pfds_referencia_maxima, pfds_percentual_desconto, pfds_tmcriacao, pfds_tmultimaalteracao)
VALUES (3, 200907, 201106, 60.00, now(), now());

INSERT INTO cobranca.parcelamento_faixa_desconto(pfds_id, pfds_referencia_minima, pfds_referencia_maxima, pfds_percentual_desconto, pfds_tmcriacao, pfds_tmultimaalteracao)
VALUES (4, 201107, 201206, 45.00, now(), now());

INSERT INTO cobranca.parcelamento_faixa_desconto(pfds_id, pfds_referencia_minima, pfds_referencia_maxima, pfds_percentual_desconto, pfds_tmcriacao, pfds_tmultimaalteracao)
VALUES (5, 201207, 201406, 30.00, now(), now());

-- //@UNDO
-- SQL to undo the change goes here.

DELETE FROM cobranca.parcelamento_faixa_desconto WHERE pfds_id IN (1,2,3,4,5);
