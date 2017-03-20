-- // Nova origem de credito para reparcelamento curto e longo prazo
-- Migration SQL that makes the change goes here.

update faturamento.credito_origem 
set crog_dscreditoorigem = 'DESCONTOS CRED ANTERIORES CURTO PRAZO', 
    CROG_DSABREVIADO = 'DESANTCURT'
where crog_id = 15;

insert into faturamento.credito_origem values (16, 'DESCONTOS CRED ANTERIORES LONGO PRAZO', 'DESANTLONG', 1, now());

-- //@UNDO
-- SQL to undo the change goes here.
delete from faturamento.credito_origem where crog_id = 16;

