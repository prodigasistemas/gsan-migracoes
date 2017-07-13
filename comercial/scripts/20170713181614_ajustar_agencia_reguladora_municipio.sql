-- // ajustar agencia reguladora municipio
-- Migration SQL that makes the change goes here.
INSERT INTO atendimentopublico.agencia_reguladora VALUES (nextval('atendimentopublico.seq_agencia_reguladora'),'__AMAE',201511,2,'2016-01-01',null,now(),'(91)98464-7478','ouvidoria.amae@gmail.com');

UPDATE atendimentopublico.agencia_regul_municipio
SET areg_id = (select last_value from atendimentopublico.seq_agencia_reguladora)
WHERE muni_id != 33;


-- //@UNDO
-- SQL to undo the change goes here.
DELETE FROM atendimentopublico.agencia_reguladora WHERE areg_nmagencia = '__AMAE';
UPDATE atendimentopublico.agencia_regul_municipio
SET areg_id = 6;

