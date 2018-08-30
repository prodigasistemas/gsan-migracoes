-- // script para preencher o valor da coluna tcac_cnvalorpreaprovado com o valor de tcac_cvvalortransmitido
-- Migration SQL that makes the change goes here.

with data1 as (
select ctrl.imov_id, tatc.tatc_cdimovel, tatc.tatc_id as tatc_tatc_id, tcac.tatc_id as tcac_tatc_id, tcac.tcac_id ,tcac.tcac_cnvalortransmitido, tcac.tcac_cnvalorpreaprovado
	from atualizacaocadastral.imovel_controle_atlz_cad ctrl
	inner join seguranca.tab_atlz_cadastral tatc on ctrl.imov_id = tatc.tatc_cdimovel
	inner join seguranca.tab_col_atlz_cadastral tcac on  tatc.tatc_id = tcac.tatc_id
	where ctrl.siac_id in (5,7,9)
	and tcac.tcac_cnvalorpreaprovado is null
	order by 1,2,3
)
   update seguranca.tab_col_atlz_cadastral tcac set tcac_cnvalorpreaprovado = (select tcac_cnvalortransmitido from data1 where data1.tcac_id = tcac.tcac_id and data1.tatc_tatc_id = tcac.tatc_id)
   where exists (select tcac_id, tatc_id from data1 where data1.tcac_id = tcac.tcac_id and data1.tatc_tatc_id = tcac.tatc_id );


-- //@UNDO
-- SQL to undo the change goes here.


