-- // insert operacao ordem servico foto
-- Migration SQL that makes the change goes here.

INSERT INTO seguranca.operacao(
	oper_id,
	fncd_id,
	oper_dsoperacao,
	oper_dsabreviado,
	oper_dscaminhourl, 
	oper_tmultimaalteracao,
	oper_idoperacaopesquisa,
	tbco_id,
	optp_id, 
	tbco_idargumento,
	oper_icregistratransacao)
VALUES (
	nextval('seguranca.seq_operacao'),
	(SELECT fncd_id FROM seguranca.funcionalidade WHERE fncd_dscaminhourl = 'exibirConsultarImovelAction.do'),
	'Exibir Ordem Servico Foto',
	'EOSF',
	'exibirOrdemServicoFotoAction.do',
	now(),
	null,
	null,
	4,
	null,
	2
);


INSERT INTO seguranca.grupo_func_operacao (
	grup_id,
	oper_id,
	fncd_id,
	gfop_tmultimaalteracao)
VALUES	(
	1,
	(SELECT oper_id FROM seguranca.operacao WHERE oper_dscaminhourl = 'exibirOrdemServicoFotoAction.do'),
	(SELECT fncd_id FROM seguranca.funcionalidade WHERE fncd_dscaminhourl = 'exibirConsultarImovelAction.do'),
	now()
);

-- //@UNDO
-- SQL to undo the change goes here.

DELETE FROM seguranca.grupo_func_operacao WHERE oper_id IN (SELECT oper_id FROM seguranca.operacao WHERE oper_dscaminhourl = 'exibirOrdemServicoFotoAction.do');
DELETE FROM seguranca.operacao WHERE oper_id IN (SELECT oper_id FROM seguranca.operacao WHERE oper_dscaminhourl = 'exibirOrdemServicoFotoAction.do');
