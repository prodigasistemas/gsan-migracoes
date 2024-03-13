-- // insert_seguranca.parametro_arrecadacao.arrecadador_contrato_convenio
-- Migration SQL that makes the change goes here.

insert into seguranca.parametro values (17, 'URL_REGISTRO_BOLETO_TOTALBANK', 'http://api.cosanpa.pa.gov.br/registro_boleto_total_bank/');
insert into arrecadacao.arrecadador_contrato_convenio values (5, 1222504, 1, 4, 2, 'DEVOLVE', 90, 0, 1, null, 0, 5);
insert into arrecadacao.arrecadador_contrato_convenio values (6, 1225453, 1, 4, 2, 'DEVOLVE', 90, 0, 2, 5, 0, 5);
insert into arrecadacao.arrecadador_contrato_convenio values (7, 1225682, 1, 4, 2, 'DEVOLVE', 90, 0, 2, null, 0, 5);
insert into arrecadacao.arrecadador_contrato_convenio values (8, 1225699, 1, 4, 2, 'DEVOLVE', 90, 0, 2, 7, 0, 5);
update arrecadacao.arrecadador_contrato_convenio set arct_id = 1 where arcc_id in(2, 3);
update arrecadacao.arrecadador_contrato_convenio set arcc_nnnsaretornofichacomp = (select arct_nnnsaretornofichacomp from arrecadacao.arrecadador_contrato ac where arct_id = 1) where arcc_id = 3;

-- //@UNDO
-- SQL to undo the change goes here.

delete from seguranca.parametro where id = 17;
delete from arrecadacao.arrecadador_contrato_convenio where arcc_id = 5;
delete from arrecadacao.arrecadador_contrato_convenio where arcc_id = 6;
delete from arrecadacao.arrecadador_contrato_convenio where arcc_id = 7;
delete from arrecadacao.arrecadador_contrato_convenio where arcc_id = 8;
