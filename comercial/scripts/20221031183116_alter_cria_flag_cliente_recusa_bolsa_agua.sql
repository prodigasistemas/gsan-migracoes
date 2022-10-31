-- // alter_cria_flag_cliente_recusa_bolsa_agua
-- Migration SQL that makes the change goes here.

alter table cadastro.cliente add column clie_rcsbolsaagua integer default 2;

comment on column cadastro.cliente.clie_rcsbolsaagua is 'Flag que indica a recusa ou nao do subsidio bolsa agua por parte do cliente (1_Nao_recusado 2_Recusado)';

-- //@UNDO
-- SQL to undo the change goes here.

alter table cadastro.cliente drop column clie_rcsbolsaagua;
