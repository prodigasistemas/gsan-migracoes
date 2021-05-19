-- // insert operacao arquivo todas situacoes recadastramento
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
    (SELECT fncd_id FROM seguranca.funcionalidade WHERE fncd_dscaminhourl = 'exibirConsultarArquivoTextoAtualizacaoCadastralAction.do'),
    'Retornar Arquivos Imoveis Todas Situacoes Atlz Cad',
    'RtArqImTds',
    'retornarArquivosImoveisTodasSituacoesAtualizacaoCadastralAction.do', 
    now(),
    null,
    null,
    6,
    null,
    2
);

INSERT INTO seguranca.grupo_func_operacao (
    grup_id,
    oper_id,
    fncd_id,
    gfop_tmultimaalteracao)
VALUES (
    (SELECT grup_id FROM seguranca.grupo WHERE grup_dsgrupo = 'ADMINISTRADOR'),
    (SELECT oper_id FROM seguranca.operacao WHERE oper_dscaminhourl = 'retornarArquivosImoveisTodasSituacoesAtualizacaoCadastralAction.do'),
    (SELECT fncd_id FROM seguranca.funcionalidade WHERE fncd_dscaminhourl = 'exibirConsultarArquivoTextoAtualizacaoCadastralAction.do'),
    now()
);

-- //@UNDO
-- SQL to undo the change goes here.

DELETE FROM seguranca.grupo_func_operacao 
WHERE oper_id IN (SELECT oper_id FROM seguranca.operacao WHERE oper_dscaminhourl = 'retornarArquivosImoveisTodasSituacoesAtualizacaoCadastralAction.do');

DELETE FROM seguranca.operacao 
WHERE oper_id IN (SELECT oper_id FROM seguranca.operacao WHERE oper_dscaminhourl = 'retornarArquivosImoveisTodasSituacoesAtualizacaoCadastralAction.do');
