-- // adicionar campos agencia reguladora
-- Migration SQL that makes the change goes here.
alter table atendimentopublico.agencia_reguladora add column areg_telefone character varying(20);
alter table atendimentopublico.agencia_reguladora add column areg_email character varying(30);

update atendimentopublico.agencia_reguladora set areg_telefone = '(91)98464-7478', areg_email = 'ouvidoria.amae@gmail.com' where areg_id = 6

-- //@UNDO
-- SQL to undo the change goes here.
alter table atendimentopublico.agencia_reguladora drop column areg_telefone;
alter table atendimentopublico.agencia_reguladora drop column areg_email;
