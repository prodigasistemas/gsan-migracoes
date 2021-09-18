-- // Add_flag_envio_email_e_sms
-- Migration SQL that makes the change goes here.

alter table cadastro.imovel add column imov_icenviocontafisica character varying(1);

alter table cadastro.cliente add column clie_icenvioemail character varying(1);
alter table cadastro.cliente add column clie_icenviosms character varying(1);

update cadastro.imovel set imov_icenviocontafisica = 1;

update cadastro.cliente set clie_icenvioemail = 0;
update cadastro.cliente set clie_icenviosms = 0;
-- //@UNDO
-- SQL to undo the change goes here.

alter table cadastro.imovel drop column imov_icenviocontafisica;

alter table cadastro.cliente drop column clie_icenvioemail;
alter table cadastro.cliente drop column clie_icenviosms;
