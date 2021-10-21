-- // Alterando tabela retorno deb automatico
-- Migration SQL that makes the change goes here.

alter table arrecadacao.debito_auto_retorno_cod add column durc_codbanco character varying(2); 

update arrecadacao.debito_auto_retorno_cod set durc_codbanco = durc_id;

alter table arrecadacao.debito_auto_retorno_cod alter column durc_codbanco set not NULL;
alter table arrecadacao.debito_auto_retorno_cod alter column durc_dsdebitoautomatico set data type character varying(65);

insert into arrecadacao.debito_auto_retorno_cod values (03, 'Tipo Registro Invalido' , 1, now(), '03');
insert into arrecadacao.debito_auto_retorno_cod values (11, 'Agência Inválida' , 1, now(), '11');
insert into arrecadacao.debito_auto_retorno_cod values (16, 'Banco Favorecido Inválido' , 1, now(), '16');
insert into arrecadacao.debito_auto_retorno_cod values (17, 'Nome do Favorecido Inválido' , 1, now(), '17');
insert into arrecadacao.debito_auto_retorno_cod values (19, 'Data de Pagamento Inválid' , 1, now(), '19');
insert into arrecadacao.debito_auto_retorno_cod values (20, 'Tipo de Moeda Inválido' , 1, now(), '20');
insert into arrecadacao.debito_auto_retorno_cod values (21, 'Quantidade de Moeda Inválida' , 1, now(), '21');
insert into arrecadacao.debito_auto_retorno_cod values (22, 'Valor de Pagamento Inválido' , 1, now(), '22');
insert into arrecadacao.debito_auto_retorno_cod values (23, 'Tipo de Inscrição Inválido' , 1, now(), '23');
insert into arrecadacao.debito_auto_retorno_cod values (24, 'Número de Inscrição Inválido' , 1, now(), '24');
insert into arrecadacao.debito_auto_retorno_cod values (25, 'Logradouro/Complemento Inválido' , 1, now(), '25');
insert into arrecadacao.debito_auto_retorno_cod values (26, 'Num. Local do Favorecido Inválido' , 1, now(), '26');
insert into arrecadacao.debito_auto_retorno_cod values (27, 'Código Documento Favorecido Inválido' , 1, now(), '27');
insert into arrecadacao.debito_auto_retorno_cod values (28, 'Bairro do Favorecido Inválido' , 1, now(), '28');
insert into arrecadacao.debito_auto_retorno_cod values (29, 'Cidade do Favorecido Inválida' , 1, now(), '29');
insert into arrecadacao.debito_auto_retorno_cod values (32, 'Código de Barras Inválido' , 1, now(), '32');
insert into arrecadacao.debito_auto_retorno_cod values (33, 'Nome do Cedente Inválido' , 1, now(), '33');
insert into arrecadacao.debito_auto_retorno_cod values (34, 'Data de Vencimento Inválida' , 1, now(), '34');
insert into arrecadacao.debito_auto_retorno_cod values (35, 'Valor do Título Inválido' , 1, now(), '35');
insert into arrecadacao.debito_auto_retorno_cod values (36, 'Qtde Regist. Lote C/Diferença' , 1, now(), '36');
insert into arrecadacao.debito_auto_retorno_cod values (37, 'Valor Regist. Lote C/Diferença' , 1, now(), '37');
insert into arrecadacao.debito_auto_retorno_cod values (38, 'Lote sem TRAILLER' , 1, now(), '38');
insert into arrecadacao.debito_auto_retorno_cod values (39, 'Remessa sem TRAILLER' , 1, now(), '39');
insert into arrecadacao.debito_auto_retorno_cod values (40, 'Total Registros do TRAILLER Inválido' , 1, now(), '40');
insert into arrecadacao.debito_auto_retorno_cod values (41, 'Valor Total Registros do TRAILLER Inválido' , 1, now(), '41');
insert into arrecadacao.debito_auto_retorno_cod values (42, 'Lote Fora de Seqüência' , 1, now(), '42');
insert into arrecadacao.debito_auto_retorno_cod values (43, 'Nome Empresa Inválido' , 1, now(), '43');
insert into arrecadacao.debito_auto_retorno_cod values (44, 'Num. Seq. De Registro Inválido' , 1, now(), '44');
insert into arrecadacao.debito_auto_retorno_cod values (45, 'Nome do Banco Inválido' , 1, now(), '45');
insert into arrecadacao.debito_auto_retorno_cod values (46, 'Data Movimento Inválida' , 1, now(), '46');
insert into arrecadacao.debito_auto_retorno_cod values (47, 'Identificação Cliente Empresa Inválido' , 1, now(), '47');
insert into arrecadacao.debito_auto_retorno_cod values (48, 'Código do Movimento Inválido' , 1, now(), '48');
insert into arrecadacao.debito_auto_retorno_cod values (49, 'Tot. Lote no Arq C/Diferença' , 1, now(), '49');
insert into arrecadacao.debito_auto_retorno_cod values (50, 'Convênio não Cadastrado' , 1, now(), '50');
insert into arrecadacao.debito_auto_retorno_cod values (51, 'Parâmetro Transmissão não Cadastrado' , 1, now(), '51');
insert into arrecadacao.debito_auto_retorno_cod values (52, 'Compromisso não Cadastrado' , 1, now(), '52');
insert into arrecadacao.debito_auto_retorno_cod values (53, 'Agência Inativa' , 1, now(), '53');
insert into arrecadacao.debito_auto_retorno_cod values (54, 'Agendamento já efetivado' , 1, now(), '54');
insert into arrecadacao.debito_auto_retorno_cod values (55, 'Lote sem HEADER' , 1, now(), '55');
insert into arrecadacao.debito_auto_retorno_cod values (56, 'Tipo de Operação Inválido' , 1, now(), '56');
insert into arrecadacao.debito_auto_retorno_cod values (57, 'Agência Invalida' , 1, now(), '57');
insert into arrecadacao.debito_auto_retorno_cod values (58, 'Cadastramento Convênio Incompleto' , 1, now(), '58');
insert into arrecadacao.debito_auto_retorno_cod values (59, 'Situação Atual Convênio não ativo' , 1, now(), '59');
insert into arrecadacao.debito_auto_retorno_cod values (60, 'Conta a Debitar Inexistente no Cadastro de Opt' , 1, now(), '60');
insert into arrecadacao.debito_auto_retorno_cod values (61, 'Conta Compromisso Inválida', 1, now(), '61');
insert into arrecadacao.debito_auto_retorno_cod values (62, 'Número do Convênio Inválido', 1, now(), '62'); 
insert into arrecadacao.debito_auto_retorno_cod values (63, 'Tipo de Compromisso Inválido' , 1, now(), '63');
insert into arrecadacao.debito_auto_retorno_cod values (64, 'Número de Compromisso Inválido' , 1, now(), '64');
insert into arrecadacao.debito_auto_retorno_cod values (65, 'Mais de 1 TRAILLER na Remessa' , 1, now(), '65');
insert into arrecadacao.debito_auto_retorno_cod values (66, 'Remessa com Erro' , 1, now(), '66');
insert into arrecadacao.debito_auto_retorno_cod values (67, 'Data Opção Inválida' , 1, now(), '67');
insert into arrecadacao.debito_auto_retorno_cod values (68, 'Qtde Moeda Lote C/Diferença' , 1, now(), '68');
insert into arrecadacao.debito_auto_retorno_cod values (69, 'Optante já cadastrado para este Convênio' , 1, now(), '69');
insert into arrecadacao.debito_auto_retorno_cod values (70, 'Indicação de Aviso sem endereço' , 1, now(), '70');
insert into arrecadacao.debito_auto_retorno_cod values (71, 'Cód. De Barras/Cód. Banco Inválido' , 1, now(), '71');
insert into arrecadacao.debito_auto_retorno_cod values (72, 'Cód. De Barras/Cód;Moeda Inválido' , 1, now(), '72');
insert into arrecadacao.debito_auto_retorno_cod values (73, 'Cód de Barras/Dígito Verificador Geral Inválido' , 1, now(), '73');
insert into arrecadacao.debito_auto_retorno_cod values (74, 'Código de Barras/Valor do Título Inválido' , 1, now(), '74');
insert into arrecadacao.debito_auto_retorno_cod values (76, 'Quantidade de Parcelas Inválida' , 1, now(), '76');
insert into arrecadacao.debito_auto_retorno_cod values (77, 'Indicador Bloqueio Parcela Inválido' , 1, now(), '77');
insert into arrecadacao.debito_auto_retorno_cod values (79, 'Opção de Aviso sem endereço' , 1, now(), '79');
insert into arrecadacao.debito_auto_retorno_cod values (80, 'Opção de Doc/OP sem endereço' , 1, now(), '80');
insert into arrecadacao.debito_auto_retorno_cod values (81, 'Conta não Cadastrada' , 1, now(), '81');
insert into arrecadacao.debito_auto_retorno_cod values (82, 'Tipo de Conta Inválido' , 1, now(), '82');
insert into arrecadacao.debito_auto_retorno_cod values (83, 'Tipo de Operação diverge de Tipo de Compromisso' , 1, now(), '83');
insert into arrecadacao.debito_auto_retorno_cod values (84, 'Tipo de Operação diverge com Tipo de Serviço' , 1, now(), '84');
insert into arrecadacao.debito_auto_retorno_cod values (85, 'Data Cancelamento Expirada' , 1, now(), '85');
insert into arrecadacao.debito_auto_retorno_cod values (86, 'Agendamento não Encontrado' , 1, now(), '86');
insert into arrecadacao.debito_auto_retorno_cod values (87, 'Valor do débito maior que o valor limite' , 1, now(), '87');
insert into arrecadacao.debito_auto_retorno_cod values (88, 'Índice Inválido' , 1, now(), '88');
insert into arrecadacao.debito_auto_retorno_cod values (89, 'Data Atual do Compromisso não Ativa' , 1, now(), '89');
insert into arrecadacao.debito_auto_retorno_cod values (90, 'Histórico não cadastrado' , 1, now(), '90');
insert into arrecadacao.debito_auto_retorno_cod values (91, 'Registro já Existente na Base' , 1, now(), '91');
insert into arrecadacao.debito_auto_retorno_cod values (92, 'Forma Parcelamento/Período Inválido' , 1, now(), '92');
insert into arrecadacao.debito_auto_retorno_cod values (93, 'Erro no acesso TAB Parâmetro de Optantes' , 1, now(), '93');
insert into arrecadacao.debito_auto_retorno_cod values (94, 'Convênio não cadastrado na TAB Parâmetro Optantes' , 1, now(), '94');
insert into arrecadacao.debito_auto_retorno_cod values (95, 'Arquivo com dt vencimento inferior a 03 dias úteis' , 1, now(), '95');
insert into arrecadacao.debito_auto_retorno_cod values (100, 'Inclusão de opt n efetuada cadastro rejeitado pelo cliente' , 1, now(), 'AA');
insert into arrecadacao.debito_auto_retorno_cod values (101, 'Inclusão de opt n efetuada prazo expirado' , 1, now(), 'AB');
insert into arrecadacao.debito_auto_retorno_cod values (102, 'Código DOC Favorecido Inválido' , 1, now(), 'AD');
insert into arrecadacao.debito_auto_retorno_cod values (103, 'Inclusão efetuada com sucesso' , 1, now(), 'BD');
insert into arrecadacao.debito_auto_retorno_cod values (104, 'Bloqueio de cadastro solicitado pelo cliente' , 1, now(), 'B1');
insert into arrecadacao.debito_auto_retorno_cod values (105, 'Insuficiencia de Fundos Conta salário com portabilidade' , 1, now(), 'C1');
insert into arrecadacao.debito_auto_retorno_cod values (106, 'Debito/credito valor parcial' , 1, now(), 'DP');
insert into arrecadacao.debito_auto_retorno_cod values (107, 'Desbloqueio de cadastro solicitado pelo cliente' , 1, now(), 'D1');
insert into arrecadacao.debito_auto_retorno_cod values (108, 'Fora do prazo Cadastro do optante x Vencimento ' , 1, now(), 'FP');
insert into arrecadacao.debito_auto_retorno_cod values (109, 'Fora do prazo Data de remessa x Vencimento ' , 1, now(), 'F2');
insert into arrecadacao.debito_auto_retorno_cod values (110, 'Fora do prazo Data de remessa x Vencimento' , 1, now(), 'F3');
insert into arrecadacao.debito_auto_retorno_cod values (111, 'Fora do prazo data de validade do optante expirada' , 1, now(), 'F4');
insert into arrecadacao.debito_auto_retorno_cod values (112, 'Tipo de Serviço Inválido para o Contrato' , 1, now(), 'HE');
insert into arrecadacao.debito_auto_retorno_cod values (113, 'Versão leiaute incompatível p tipo cadastrado no compromisso' , 1, now(), 'LD');
insert into arrecadacao.debito_auto_retorno_cod values (114, 'Optante não cadastrado/inexistente' , 1, now(), 'L1');
insert into arrecadacao.debito_auto_retorno_cod values (115, 'Operação/Tipo de conta não ativada para o compromisso' , 1, now(), 'R1');

-- //@UNDO
-- SQL to undo the change goes here.


