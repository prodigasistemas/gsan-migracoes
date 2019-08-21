-- // retirar_etapa_de_emitir_documento_de_cobranca_do_processo
-- Migration SQL that makes the change goes here.

update batch.processo_funcionalidade
    set prfn_icuso = 2
where 1 = 1
and proc_id = 6
and fncd_id = 1312;


-- //@UNDO
-- SQL to undo the change goes here.

update batch.processo_funcionalidade
    set prfn_icuso = 1
where 1 = 1
and proc_id = 6
and fncd_id = 1312;
