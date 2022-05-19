-- // Add batch enviar contas por email
-- Migration SQL that makes the change goes here.

insert into batch.processo_funcionalidade 
values (nextval('batch.seq_processo_funcionalidade'), 2, now(), 1, 10, 1297, 1, null);

-- //@UNDO
-- SQL to undo the change goes here.


