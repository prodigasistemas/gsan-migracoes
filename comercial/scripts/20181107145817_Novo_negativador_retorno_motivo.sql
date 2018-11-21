-- // Novo negativador retorno motivo
-- Migration SQL that makes the change goes here.

insert into cobranca.negatd_retorno_motivo values (917, 'DOCUMENTO SOB JUDICE, BLOQUEADO PARA INCLUSOES.', 1, 2, now(), 2, 917);

-- //@UNDO
-- SQL to undo the change goes here.

delete from cobranca.negatd_retorno_motivo where nrmt_id = 917;
