-- // Mudanda de titularidade retroativa
-- Migration SQL that makes the change goes here.

insert into seguranca.permissao_especial values  (202, 'MUDANCA DE TITULARIDADE RETROATIVA', 1, now(), 362); 

-- //@UNDO
-- SQL to undo the change goes here.

delete from seguranca.permissao_especial where pmep_id = 202;


