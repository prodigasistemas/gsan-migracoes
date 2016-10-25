-- // nova funcionalidade relatorio performance medicao
-- Migration SQL that makes the change goes here.

INSERT INTO seguranca.funcionalidade(
            fncd_id, modu_id, fncd_dsfuncionalidade, fncd_tmultimaalteracao, 
            fncd_dscaminhomenu, fncd_dscaminhourl, fncd_icpontoentrada, fncd_dsabreviado, 
            fncd_nnordemmenu, fncd_icnovajanela, fncd_icolap, fncg_id, url)
    VALUES (16038,13,'Relatorio de Performance',now(),null,'http://hdesempenho.cosanpa.pa.gov.br/performance_relatorios/new',1,'RelPer',
    	    0,2,2,146,'http://hdesempenho.cosanpa.pa.gov.br/performance_relatorios/new');



INSERT INTO seguranca.operacao(
            oper_id, fncd_id, oper_dsoperacao, oper_dsabreviado, oper_dscaminhourl, 
            oper_tmultimaalteracao, oper_idoperacaopesquisa, tbco_id, optp_id, 
            tbco_idargumento, oper_icregistratransacao)
    VALUES (15059,16038,'Relatorio de Performance','RelPer',null,now(),null,null,4,null,2);


INSERT INTO seguranca.grupo_func_operacao(grup_id, oper_id, fncd_id, gfop_tmultimaalteracao) VALUES (1,15059,16038,now());


-- //@UNDO
-- SQL to undo the change goes here.

DELETE FROM seguranca.grupo_func_operacao WHERE fncd_id = 16038;
DELETE FROM seguranca.operacao WHERE fncd_id = 16038;
DELETE FROM seguranca.funcionalidade WHERE fncd_id = 16038;