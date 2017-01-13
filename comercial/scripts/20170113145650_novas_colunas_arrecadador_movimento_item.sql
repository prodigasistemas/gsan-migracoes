-- // novas colunas arrecadador movimento item
-- Migration SQL that makes the change goes here.

ALTER TABLE arrecadacao.arrecadador_mov_item ADD COLUMN amit_vldocumento numeric(13,2);

ALTER TABLE arrecadacao.arrecadador_mov_item ADD COLUMN cnta_id integer;
ALTER TABLE arrecadacao.arrecadador_mov_item ADD CONSTRAINT fk4_arrecadador_movimento_item FOREIGN KEY (cnta_id) REFERENCES faturamento.conta_geral (cnta_id) MATCH SIMPLE ON UPDATE RESTRICT ON DELETE RESTRICT;

ALTER TABLE arrecadacao.arrecadador_mov_item ADD COLUMN gpag_id integer;
ALTER TABLE arrecadacao.arrecadador_mov_item ADD CONSTRAINT fk5_arrecadador_movimento_item FOREIGN KEY (gpag_id) REFERENCES faturamento.guia_pagamento_geral (gpag_id) MATCH SIMPLE ON UPDATE RESTRICT ON DELETE RESTRICT;

ALTER TABLE arrecadacao.arrecadador_mov_item ADD COLUMN cbdo_id integer;
ALTER TABLE arrecadacao.arrecadador_mov_item ADD CONSTRAINT fk6_arrecadador_movimento_item FOREIGN KEY (cbdo_id) REFERENCES cobranca.cobranca_documento (cbdo_id) MATCH SIMPLE ON UPDATE RESTRICT ON DELETE RESTRICT;

ALTER TABLE arrecadacao.arrecadador_mov_item ADD COLUMN fatu_id integer;
ALTER TABLE arrecadacao.arrecadador_mov_item ADD CONSTRAINT fk7_arrecadador_movimento_item FOREIGN KEY (fatu_id) REFERENCES faturamento.fatura (fatu_id) MATCH SIMPLE ON UPDATE RESTRICT ON DELETE RESTRICT;

-- //@UNDO
-- SQL to undo the change goes here.

ALTER TABLE arrecadacao.arrecadador_mov_item DROP COLUMN amit_vldocumento;
ALTER TABLE arrecadacao.arrecadador_mov_item DROP COLUMN cnta_id;
ALTER TABLE arrecadacao.arrecadador_mov_item DROP COLUMN gpag_id;
ALTER TABLE arrecadacao.arrecadador_mov_item DROP COLUMN cbdo_id;
ALTER TABLE arrecadacao.arrecadador_mov_item DROP COLUMN fatu_id;
