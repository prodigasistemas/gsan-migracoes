-- // Novo tipo de credito para reparcelamento
-- Migration SQL that makes the change goes here.

insert into faturamento.credito_tipo values (864, 6, 'CREDITOS ANTERIORES LONGO PRAZ', 'CRANDLPRZ', 1, now(), 999999.99, 2, null);
  update faturamento.credito_tipo set
     crti_dscreditotipo = 'CREDITOS ANTERIORES CURTO PRAZ', 
     crti_dsabreviado = 'CRANDCPRZ'  
     where crti_id = 4;

-- //@UNDO
-- SQL to undo the change goes here.


delete from faturamento.credito_tipo where  crti_id = 864;
update faturamento.credito_tipo set
     crti_dscreditotipo = 'CREDITOS ANTERIORES', 
     crti_dsabreviado = 'CRED.ANT.'  
     where crti_id = 4;