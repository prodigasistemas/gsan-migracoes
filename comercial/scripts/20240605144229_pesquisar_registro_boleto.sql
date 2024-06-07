-- // pesquisar_registro_boleto
-- Migration SQL that makes the change goes here.

insert into seguranca.parametro values (19, 'URL_TOTAL_BANK_PESQUISA', 'http://api.cosanpa.pa.gov.br/pesquisar_boleto_total_bank/');
create table public.data_pesquisar_registrar (data_pesquisar date);
insert into public.data_pesquisar_registrar (data_pesquisar) values ('2024-05-31' );
GRANT ALL ON TABLE public.data_pesquisar_registrar TO gsan_admin;

-- //@UNDO
-- SQL to undo the change goes here.

delete from seguranca.parametro where id = 19;
drop table public.datas_pesquisar_registrar;
