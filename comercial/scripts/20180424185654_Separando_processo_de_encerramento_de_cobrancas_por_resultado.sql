-- // Separando processo de encerramento de cobrancas por resultado
-- Migration SQL that makes the change goes here.

update batch.processo set proc_dsprocesso = 'ENCERRAR COMANDO DE COBRANCA RESULTADO' where proc_id = 506;

insert into seguranca.funcionalidade
values (16045,3,'Encerrar Comando de Cobranca Resultado',now(),'Gsan/','sem url',2,'EncCmCbRe',0,2,2,null,null);

update batch.processo_funcionalidade set fncd_id = 16045 where proc_id = 506;

-- //@UNDO
-- SQL to undo the change goes here.

update batch.processo_funcionalidade set fncd_id = 1474 where proc_id = 506;

--update batch.funcionalidade_iniciada set fncd_id = 1474 where fncd_id = 16045;

delete from seguranca.funcionalidade where fncd_id = 16045;
