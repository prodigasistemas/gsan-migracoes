-- // Adicionando funcionalidades a processos de cobranca por resultado 
-- Migration SQL that makes the change goes here.

insert into batch.processo_funcionalidade values 
  (nextval('batch.seq_processo_funcionalidade'), 151, now(), 19, 2, 1244, 1, null);

-- //@UNDO
-- SQL to undo the change goes here.

delete from batch.processo_funcionalidade where proc_id = 151 and fncd_id = 1244;
