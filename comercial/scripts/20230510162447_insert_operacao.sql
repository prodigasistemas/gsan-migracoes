-- // insert_operacao
-- Migration SQL that makes the change goes here.

INSERT INTO seguranca.operacao VALUES (nextval('seguranca.seq_operacao'), 16108, 'Exibir Imovel Faturamento Seletivo', 'ExImFatSel', 'ImovelFaturamentoSeletivo.do', now(), NULL, NULL, 1, NULL, 2);
INSERT INTO seguranca.operacao VALUES (nextval('seguranca.seq_operacao'), 16109, 'Filtrar Faturamento Imovel Seletivo', 'FilFatImSe', 'filtrarFaturamentoImovelSeletivo.do', now(), NULL, NULL, 1, NULL, 2);

-- //@UNDO
-- SQL to undo the change goes here.

DELETE FROM seguranca.operacao WHERE oper_id in (15123,15124);
