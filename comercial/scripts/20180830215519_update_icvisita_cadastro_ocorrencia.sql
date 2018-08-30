-- // update icvisita cadastro ocorrencia
-- Migration SQL that makes the change goes here.



UPDATE cadastro.cadastro_ocorrencia SET cocr_icvisita = 2;
UPDATE cadastro.cadastro_ocorrencia SET cocr_icvisita = 1 WHERE cocr_id IN (2,3,10,11,15,16,31);

-- //@UNDO
-- SQL to undo the change goes here.

UPDATE cadastro.cadastro_ocorrencia SET cocr_icvisita = 2;
