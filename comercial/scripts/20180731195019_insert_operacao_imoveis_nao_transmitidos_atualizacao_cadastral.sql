-- // insert operacao imoveis a revisar atualizacao cadastral
-- Migration SQL that makes the change goes here.

INSERT INTO seguranca.operacao VALUES ((SELECT max(oper_id) + 1 FROM seguranca.operacao),1194,'Retornar Arquivos Imoveis Nao Transmitidos Atlz Cad','RtArqImRv','retornarArquivosImoveisNaoTransmitidosAtualizacaoCadastralAction.do',now(),null,null,6,null,2);

INSERT INTO seguranca.grupo_func_operacao VALUES (1,(SELECT oper_id FROM seguranca.operacao WHERE oper_dscaminhourl like '%retornarArquivosImoveisNaoTransmitidosAtualizacaoCadastralAction%'),1194);
INSERT INTO seguranca.grupo_func_operacao VALUES (3,(SELECT oper_id FROM seguranca.operacao WHERE oper_dscaminhourl like '%retornarArquivosImoveisNaoTransmitidosAtualizacaoCadastralAction%'),1194);
INSERT INTO seguranca.grupo_func_operacao VALUES (69,(SELECT oper_id FROM seguranca.operacao WHERE oper_dscaminhourl like '%retornarArquivosImoveisNaoTransmitidosAtualizacaoCadastralAction%'),1194);
INSERT INTO seguranca.grupo_func_operacao VALUES (73,(SELECT oper_id FROM seguranca.operacao WHERE oper_dscaminhourl like '%retornarArquivosImoveisNaoTransmitidosAtualizacaoCadastralAction%'),1194);

-- //@UNDO
-- SQL to undo the change goes here.

DELETE FROM seguranca.grupo_func_operacao WHERE oper_id IN (SELECT oper_id FROM seguranca.operacao WHERE oper_dscaminhourl like '%retornarArquivosImoveisNaoTransmitidosAtualizacaoCadastralAction%');
DELETE FROM seguranca.operacao WHERE oper_id IN (SELECT oper_id FROM seguranca.operacao WHERE oper_dscaminhourl like '%retornarArquivosImoveisNaoTransmitidosAtualizacaoCadastralAction%');
