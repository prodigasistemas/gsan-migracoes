-- // Novos lancamentos itens para inclusao no relatrio de saldo de contas a receber de usuarios
-- Migration SQL that makes the change goes here.

insert into financeiro.lancamento_item values (124, 'DEVOLUCAO JUROS PARCELAMENTO', 'DEVJURPARC',2, NOW()); 
insert into financeiro.lancamento_item values (125, 'DEVOLUCAO TARIFA AGUA', 'DEVTARAGUA',2, NOW());  
insert into financeiro.lancamento_item values (126, 'DEVOLUCAO TARIFA ESGOTO', 'DEVTARESGO',2, NOW());  
insert into financeiro.lancamento_item values (127, 'SERVICOS INDIRETOS PAGOS INDEVIDAMENTE', 'SEVPGINDEV',2, NOW());   

-- //@UNDO
-- SQL to undo the change goes here.


delete from financeiro.lancamento_item where lcit_id = 124;
delete from financeiro.lancamento_item where lcit_id = 125;  
delete from financeiro.lancamento_item where lcit_id = 126;  
delete from financeiro.lancamento_item where lcit_id = 127;  