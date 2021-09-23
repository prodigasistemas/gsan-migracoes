-- // Add_flag_envio_email_e_sms
-- Migration SQL that makes the change goes here.

alter table cadastro.imovel add column imov_icenviocontafisica smallint default 1;
alter table cadastro.cliente add column clie_icenvioemail smallint default 2;
alter table cadastro.cliente add column clie_icenviosms smallint default 2;

-- //@UNDO
-- SQL to undo the change goes here.

alter table cadastro.imovel drop column imov_icenviocontafisica;
alter table cadastro.cliente drop column clie_icenvioemail;
alter table cadastro.cliente drop column clie_icenviosms;
