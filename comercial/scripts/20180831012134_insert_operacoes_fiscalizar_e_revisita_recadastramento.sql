-- // insert operacoes fiscalizar e revisita recadastramento
-- Migration SQL that makes the change goes here.

INSERT INTO seguranca.operacao VALUES ((SELECT nextval('seguranca.seq_operacao')),1194,'Retornar Arquivos Imoveis A Fiscalizar Atlz Cad','RtArqImFsc','retornarArquivosImoveisAFiscalizarAtualizacaoCadastralAction.do',now(),null,null,6,null,2);
INSERT INTO seguranca.grupo_func_operacao VALUES (1, (SELECT oper_id FROM seguranca.operacao WHERE oper_dscaminhourl ='retornarArquivosImoveisAFiscalizarAtualizacaoCadastralAction.do'), 1194, now());
INSERT INTO seguranca.grupo_func_operacao VALUES (3, (SELECT oper_id FROM seguranca.operacao WHERE oper_dscaminhourl ='retornarArquivosImoveisAFiscalizarAtualizacaoCadastralAction.do'), 1194, now());
INSERT INTO seguranca.grupo_func_operacao VALUES (69, (SELECT oper_id FROM seguranca.operacao WHERE oper_dscaminhourl ='retornarArquivosImoveisAFiscalizarAtualizacaoCadastralAction.do'), 1194, now());
INSERT INTO seguranca.grupo_func_operacao VALUES (73, (SELECT oper_id FROM seguranca.operacao WHERE oper_dscaminhourl ='retornarArquivosImoveisAFiscalizarAtualizacaoCadastralAction.do'), 1194, now());

INSERT INTO seguranca.operacao VALUES ((SELECT nextval('seguranca.seq_operacao')),1194,'Retornar Arquivos Imoveis A Revisitar Atlz Cad','RtArqImRvs','retornarArquivosImoveisARevisitarAtualizacaoCadastralAction.do',now(),null,null,6,null,2);
INSERT INTO seguranca.grupo_func_operacao VALUES (1, (SELECT oper_id FROM seguranca.operacao WHERE oper_dscaminhourl ='retornarArquivosImoveisARevisitarAtualizacaoCadastralAction.do'), 1194, now());
INSERT INTO seguranca.grupo_func_operacao VALUES (3, (SELECT oper_id FROM seguranca.operacao WHERE oper_dscaminhourl ='retornarArquivosImoveisARevisitarAtualizacaoCadastralAction.do'), 1194, now());
INSERT INTO seguranca.grupo_func_operacao VALUES (69, (SELECT oper_id FROM seguranca.operacao WHERE oper_dscaminhourl ='retornarArquivosImoveisARevisitarAtualizacaoCadastralAction.do'), 1194, now());
INSERT INTO seguranca.grupo_func_operacao VALUES (73, (SELECT oper_id FROM seguranca.operacao WHERE oper_dscaminhourl ='retornarArquivosImoveisARevisitarAtualizacaoCadastralAction.do'), 1194, now());

-- //@UNDO
-- SQL to undo the change goes here.

DELETE FROM seguranca.grupo_func_operacao WHERE oper_id IN (SELECT oper_id FROM seguranca.operacao WHERE oper_dscaminhourl ='retornarArquivosImoveisAFiscalizarAtualizacaoCadastralAction.do');
DELETE FROM seguranca.operacao WHERE oper_dscaminhourl ='retornarArquivosImoveisAFiscalizarAtualizacaoCadastralAction.do';

DELETE FROM seguranca.grupo_func_operacao WHERE oper_id IN (SELECT oper_id FROM seguranca.operacao WHERE oper_dscaminhourl ='retornarArquivosImoveisARevisitarAtualizacaoCadastralAction.do');
DELETE FROM seguranca.operacao WHERE oper_dscaminhourl ='retornarArquivosImoveisARevisitarAtualizacaoCadastralAction.do';