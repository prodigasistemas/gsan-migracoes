-- // Novos campos de aliquota imposto e descricao aliquota
-- Migration SQL that makes the change goes here.
alter table cadastro.sistema_parametros add column parm_dsaliquotaimposto character varying(20);
alter table cadastro.sistema_parametros add column parm_vlaliquotaimposto numeric(13,2);

update cadastro.sistema_parametros set parm_dsaliquotaimposto = 'PIS/PASEP e COFINS', parm_vlaliquotaimposto = 9.25;


-- //@UNDO
-- SQL to undo the change goes here.
alter table cadastro.sistema_parametros drop column parm_dsaliquotaimposto;
alter table cadastro.sistema_parametros drop column parm_vlaliquotaimposto;

