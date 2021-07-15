-- // criar tabela para historico de alteracoes em imovel
-- Migration SQL that makes the change goes here.

CREATE TABLE cadastro.imovel_historico
(
  imhi_id                            integer  NOT NULL,
  imov_id                            integer  NOT NULL, 
  loca_id                            integer  NOT NULL, 
  stcm_id                            integer  NOT NULL, 
  qdra_id                            integer  NOT NULL, 
  imhi_nnlote                        smallint NOT NULL, 
  imhi_nnsublote                     smallint NOT NULL,
  imhi_nntestadalote                 smallint,
  imhi_nnimovel                      character(5) NOT NULL,
  imhi_dscomplementoendereco         character varying(25),
  cep_id                             integer,
  acon_id                            integer,
  imhi_idimovelcondominio            integer, 
  imhi_icimovelcondominio            smallint NOT NULL,
  imhi_idimovelprincipal             integer,
  depj_id                            integer,
  imhi_voreservatoriosuperior        numeric(5,2), 
  resv_idreservatoriosuperior        integer, 
  imhi_voreservatorioinferior        numeric(5,2),
  resv_idreservatorioinferior        integer,
  pcal_id                            integer,
  prua_id                            integer,
  ftab_id                            integer,
  last_id                            integer NOT NULL,
  lest_id                            integer NOT NULL,
  iper_id                            integer NOT NULL,
  cbst_id                            integer,
  ftst_id                            integer,
  imhi_vol_piscina                   numeric(10,2),
  pisc_id                            integer,
  poco_id                            integer,
  imhi_dtsupressaoparcial            date,
  imhi_dtinfracao                    date,
  imhi_nnpontosutilizacao            smallint,
  imhi_nnmorador                     smallint,
  imhi_nnretificacao                 smallint,
  imhi_nnleituraexcecao              smallint,
  imhi_nnparcelamento                smallint,
  imhi_nnreparcelamento              smallint,
  imhi_nnreparcmtconsec              smallint,
  imhi_ddvencimento                  smallint,
  imhi_nniptu                        character varying(31), 
  imhi_nncontratoenergia             numeric(10,0),
  imhi_icemsextfatmt                 smallint NOT NULL DEFAULT 2,
  imhi_icdebitoconta                 smallint NOT NULL,
  imhi_icexclusao                    smallint,
  imhi_nncoordenadax                 character varying(50),
  imhi_nncoordenaday                 character varying(50),
  eanm_id                            integer,
  cocr_id                            integer,
  hidi_id                            integer,
  ltan_id                            integer,
  imhi_tmultimaalteracao             timestamp without time zone NOT NULL DEFAULT now(),
  cstf_id                            integer NOT NULL,
  fttp_id                            integer,
  edrf_id                            integer,
  logr_id                            integer,
  imhi_qteconomia                    smallint,
  imhi_icsuspensaoabastecimento      smallint,
  ftsm_id                            integer,
  imhi_nnareaconstruida              numeric(10,2),
  cbsp_id                            integer,
  bair_id                            integer,
  lgbr_id                            integer,
  lgcp_id                            integer,
  icte_id                            integer NOT NULL DEFAULT 2,
  imhi_icjardim                      smallint,
  imhi_nnsequencialrota              integer,
  imhi_nmimovel                      character varying(30),
  func_id                            integer,
  imha_id                            integer,
  impr_id                            integer,
  imco_id                            integer,
  imcb_id                            integer,
  rota_identrega                     integer,
  imhi_nnsequencialrotaentrega       integer,
  imhi_dtenviocontrato               date,
  siac_id                            integer DEFAULT 0,
  logr_idinicioperimetro             integer,
  logr_idfimperimetro                integer,
  qdfa_id                            integer,
  rota_idalternativa                 integer,
  imhi_nnmedidorenergia              character(10), 
  imhi_dtvisitacomercial             date, 
  imhi_icvencimentomesseguinte       smallint NOT NULL DEFAULT 2,
  imhi_dsinformacaocomplementar      character varying(750),
  imhi_cddebitoautomatico            integer,
  imhi_icreincidenciainfracao        integer,
  imhi_nnquadraentrega               integer,
  imhi_amrefexclusaotarifasocial     integer,
  imhi_icnivelinstalacaoesgoto       smallint NOT NULL DEFAULT 2,
  imhi_icimovelareacomum             smallint NOT NULL DEFAULT 2,
  imhi_idcategoriaprincipal          integer,
  imhi_idsubcategoriaprincipal       integer,
  imhi_classe_social                 smallint,
  imhi_quantidade_animais_domesticos smallint,
  imhi_vol_cisterna                  numeric(10,2),
  imhi_vol_cx_dagua                  numeric(10,2),
  imhi_tipo_uso                      smallint,
  imhi_acesso_hidrometro             smallint,
  imhi_qtd_economias_social          integer,
  imhi_qtd_economias_outra           integer,
  imhi_percentual_abastecimento      smallint,
  usur_id                            integer,
  CONSTRAINT imovel_historico_pkey PRIMARY KEY (imhi_id),
  CONSTRAINT fk01_imovel_historico FOREIGN KEY (loca_id)
      REFERENCES cadastro.localidade (loca_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT,
  CONSTRAINT fk02_imovel_historico FOREIGN KEY (stcm_id)
      REFERENCES cadastro.setor_comercial (stcm_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT,
  CONSTRAINT fk03_imovel_historico FOREIGN KEY (qdra_id)
      REFERENCES cadastro.quadra (qdra_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT,
  CONSTRAINT fk04_imovel_historico FOREIGN KEY (imhi_idimovelprincipal)
      REFERENCES cadastro.imovel (imov_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT,
  CONSTRAINT fk05_imovel_historico FOREIGN KEY (acon_id)
      REFERENCES cadastro.area_construida_faixa (acon_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT,
  CONSTRAINT fk06_imovel_historico FOREIGN KEY (depj_id)
      REFERENCES cadastro.despejo (depj_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT,
  CONSTRAINT fk07_imovel_historico FOREIGN KEY (resv_idreservatoriosuperior)
      REFERENCES cadastro.reservatorio_volume_fx (resv_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT,
  CONSTRAINT fk08_imovel_historico FOREIGN KEY (resv_idreservatorioinferior)
      REFERENCES cadastro.reservatorio_volume_fx (resv_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT,
  CONSTRAINT fk09_imovel_historico FOREIGN KEY (pcal_id)
      REFERENCES cadastro.pavimento_calcada (pcal_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT,            
  CONSTRAINT fk10_imovel_historico FOREIGN KEY (prua_id)
      REFERENCES cadastro.pavimento_rua (prua_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT,
  CONSTRAINT fk11_imovel_historico FOREIGN KEY (ftab_id)
      REFERENCES cadastro.fonte_abastecimento (ftab_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT,
  CONSTRAINT fk12_imovel_historico FOREIGN KEY (last_id)
      REFERENCES atendimentopublico.ligacao_agua_situacao (last_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT,
  CONSTRAINT fk13_imovel_historico FOREIGN KEY (lest_id)
      REFERENCES atendimentopublico.ligacao_esgoto_situacao (lest_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT,
  CONSTRAINT fk14_imovel_historico FOREIGN KEY (iper_id)
      REFERENCES cadastro.imovel_perfil (iper_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT,
  CONSTRAINT fk15_imovel_historico FOREIGN KEY (cbst_id)
      REFERENCES cobranca.cobranca_situacao (cbst_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT,
  CONSTRAINT fk16_imovel_historico FOREIGN KEY (ftst_id)
      REFERENCES faturamento.fatur_situacao_tipo (ftst_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT,
  CONSTRAINT fk17_imovel_historico FOREIGN KEY (pisc_id)
      REFERENCES cadastro.piscina_volume_faixa (pisc_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT,
  CONSTRAINT fk18_imovel_historico FOREIGN KEY (poco_id)
      REFERENCES cadastro.poco_tipo (poco_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT,
  CONSTRAINT fk19_imovel_historico FOREIGN KEY (eanm_id)
      REFERENCES cadastro.elo_anormalidade (eanm_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT,
  CONSTRAINT fk20_imovel_historico FOREIGN KEY (cocr_id)
      REFERENCES cadastro.cadastro_ocorrencia (cocr_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT,
  CONSTRAINT fk21_imovel_historico FOREIGN KEY (hidi_id)
      REFERENCES micromedicao.hidrometro_inst_hist (hidi_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT,
  CONSTRAINT fk22_imovel_historico FOREIGN KEY (ltan_id)
      REFERENCES micromedicao.leitura_anormalidade (ltan_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT,
  CONSTRAINT fk23_imovel_historico FOREIGN KEY (cstf_id)
      REFERENCES faturamento.consumo_tarifa (cstf_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT,
  CONSTRAINT fk24_imovel_historico FOREIGN KEY (fttp_id)
      REFERENCES faturamento.faturamento_tipo (fttp_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT,
  CONSTRAINT fk25_imovel_historico FOREIGN KEY (edrf_id)
      REFERENCES cadastro.endereco_referencia (edrf_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT,
  CONSTRAINT fk26_imovel_historico FOREIGN KEY (ftsm_id)
      REFERENCES faturamento.fatur_situacao_motivo (ftsm_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT,
  CONSTRAINT fk27_imovel_historico FOREIGN KEY (cbsp_id)
      REFERENCES cobranca.cobranca_situacao_tipo (cbsp_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT,
  CONSTRAINT fk28_imovel_historico FOREIGN KEY (lgbr_id)
      REFERENCES cadastro.logradouro_bairro (lgbr_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT,
  CONSTRAINT fk29_imovel_historico FOREIGN KEY (lgcp_id)
      REFERENCES cadastro.logradouro_cep (lgcp_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT,
  CONSTRAINT fk30_imovel_historico FOREIGN KEY (icte_id)
      REFERENCES cadastro.imovel_conta_envio (icte_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT,
  CONSTRAINT fk31_imovel_historico FOREIGN KEY (func_id)
      REFERENCES cadastro.funcionario (func_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT,
  CONSTRAINT fk32_imovel_historico FOREIGN KEY (imha_id)
      REFERENCES cadastro.imovel_tipo_habitacao (imha_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT,
  CONSTRAINT fk33_imovel_historico FOREIGN KEY (impr_id)
      REFERENCES cadastro.imovel_tipo_propriedade (impr_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT,
  CONSTRAINT fk34_imovel_historico FOREIGN KEY (imco_id)
      REFERENCES cadastro.imovel_tipo_construcao (imco_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT,
  CONSTRAINT fk35_imovel_historico FOREIGN KEY (imcb_id)
      REFERENCES cadastro.imovel_tipo_cobertura (imcb_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT,
  CONSTRAINT fk36_imovel_historico FOREIGN KEY (rota_identrega)
      REFERENCES micromedicao.rota (rota_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT,
  CONSTRAINT fk37_imovel_historico FOREIGN KEY (siac_id)
      REFERENCES cadastro.situacao_atlz_cadastral (siac_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT,
  CONSTRAINT fk38_imovel_historico FOREIGN KEY (imhi_idimovelcondominio)
      REFERENCES cadastro.imovel (imov_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT,
  CONSTRAINT fk39_imovel_historico FOREIGN KEY (logr_idinicioperimetro)
      REFERENCES cadastro.logradouro (logr_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT,
  CONSTRAINT fk40_imovel_historico FOREIGN KEY (logr_idfimperimetro)
      REFERENCES cadastro.logradouro (logr_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT,
  CONSTRAINT fk41_imovel_historico FOREIGN KEY (qdfa_id)
      REFERENCES cadastro.quadra_face (qdfa_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT,
  CONSTRAINT fk42_imovel_historico FOREIGN KEY (rota_idalternativa)
      REFERENCES micromedicao.rota (rota_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT,
  CONSTRAINT fk43_imovel_historico FOREIGN KEY (imhi_idcategoriaprincipal)
      REFERENCES cadastro.categoria (catg_id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT fk44_imovel_historico FOREIGN KEY (imhi_idsubcategoriaprincipal)
      REFERENCES cadastro.subcategoria (scat_id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE NO ACTION,
  CONSTRAINT fk45_imovel_historico FOREIGN KEY (usur_id)
      REFERENCES seguranca.usuario (usur_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT,
  CONSTRAINT fk46_imovel_historico FOREIGN KEY (imov_id)
      REFERENCES cadastro.imovel (imov_id) MATCH SIMPLE
      ON UPDATE RESTRICT ON DELETE RESTRICT
)
WITH (
  OIDS=FALSE
);

ALTER TABLE cadastro.imovel_historico  OWNER TO gsan_admin;

GRANT ALL ON                                 TABLE cadastro.imovel_historico TO gsan_admin;
GRANT SELECT, UPDATE, INSERT, DELETE ON      TABLE cadastro.imovel_historico TO role_aplic;
GRANT SELECT ON                              TABLE cadastro.imovel_historico TO role_users;

COMMENT ON TABLE cadastro.imovel_historico  IS 'Historico de alteracoes na tabela de imovel';

COMMENT ON COLUMN cadastro.imovel_historico.imhi_id                            IS 'Id do historico do imovel gerado por sequence';
COMMENT ON COLUMN cadastro.imovel_historico.imov_id                            IS 'Id do imovel (sequencial+DV)=matricula';
COMMENT ON COLUMN cadastro.imovel_historico.loca_id                            IS 'Id da localidade';
COMMENT ON COLUMN cadastro.imovel_historico.stcm_id                            IS 'Id do setor comercial';
COMMENT ON COLUMN cadastro.imovel_historico.qdra_id                            IS 'Id da quadra';
COMMENT ON COLUMN cadastro.imovel_historico.imhi_nnlote                        IS 'Numero do lote';
COMMENT ON COLUMN cadastro.imovel_historico.imhi_nnsublote                     IS 'Numero do sublote, quando nao houver sublote, preecher com o valor zero';
COMMENT ON COLUMN cadastro.imovel_historico.imhi_nntestadalote                 IS 'Medida da testada (frente) do lote em metros';
COMMENT ON COLUMN cadastro.imovel_historico.imhi_nnimovel                      IS 'Numero do imovel';
COMMENT ON COLUMN cadastro.imovel_historico.imhi_dscomplementoendereco         IS 'Complemento do endereco';
COMMENT ON COLUMN cadastro.imovel_historico.cep_id                             IS 'Id do CEP do endereco do imovel';
COMMENT ON COLUMN cadastro.imovel_historico.acon_id                            IS 'Id da faixa de area construida do imovel';
COMMENT ON COLUMN cadastro.imovel_historico.imhi_idimovelcondominio            IS 'Id do imovel condominio (matricula) associado';
COMMENT ON COLUMN cadastro.imovel_historico.imhi_icimovelcondominio            IS 'Indicador de imovel condominio (1_SIM, 2_NaO)';
COMMENT ON COLUMN cadastro.imovel_historico.imhi_idimovelprincipal             IS 'Id do imovel principal (matricula) associado';
COMMENT ON COLUMN cadastro.imovel_historico.depj_id                            IS 'Id do tipo de despejo';
COMMENT ON COLUMN cadastro.imovel_historico.imhi_voreservatoriosuperior        IS 'Volume do reservatorio superior em metros cubicos';
COMMENT ON COLUMN cadastro.imovel_historico.resv_idreservatoriosuperior        IS 'Id da faixa de volume de reservatorio superior';
COMMENT ON COLUMN cadastro.imovel_historico.imhi_voreservatorioinferior        IS 'Volume do reservatorio inferior em metros cubicos';
COMMENT ON COLUMN cadastro.imovel_historico.resv_idreservatorioinferior        IS 'Id da faixa de volume de reservatorio inferior';
COMMENT ON COLUMN cadastro.imovel_historico.pcal_id                            IS 'Id do tipo de pavimento de calcada';
COMMENT ON COLUMN cadastro.imovel_historico.prua_id                            IS 'Id do tipo de pavimento de rua';
COMMENT ON COLUMN cadastro.imovel_historico.ftab_id                            IS 'Id da fonte de abastecimento';
COMMENT ON COLUMN cadastro.imovel_historico.last_id                            IS 'Id da situacao da ligacao de agua';
COMMENT ON COLUMN cadastro.imovel_historico.lest_id                            IS 'Id da situacao da ligacao de esgoto';
COMMENT ON COLUMN cadastro.imovel_historico.iper_id                            IS 'Id do perfil do imovel';
COMMENT ON COLUMN cadastro.imovel_historico.cbst_id                            IS 'Id da situacao especial de cobranca';
COMMENT ON COLUMN cadastro.imovel_historico.ftst_id                            IS 'Id da situacao especial de faturamento';
COMMENT ON COLUMN cadastro.imovel_historico.pisc_id                            IS 'Id da faixa de volume da piscina';
COMMENT ON COLUMN cadastro.imovel_historico.poco_id                            IS 'Id do tipo de poco';
COMMENT ON COLUMN cadastro.imovel_historico.imhi_dtsupressaoparcial            IS 'Data da supressao parcial';
COMMENT ON COLUMN cadastro.imovel_historico.imhi_dtinfracao                    IS 'Data de infracao';
COMMENT ON COLUMN cadastro.imovel_historico.imhi_nnpontosutilizacao            IS 'Numero de pontos de utilizacao ';
COMMENT ON COLUMN cadastro.imovel_historico.imhi_nnmorador                     IS 'Numero de moradores';
COMMENT ON COLUMN cadastro.imovel_historico.imhi_nnretificacao                 IS 'Numero de retificacões';
COMMENT ON COLUMN cadastro.imovel_historico.imhi_nnleituraexcecao              IS 'Numero de excecões de leitura';
COMMENT ON COLUMN cadastro.imovel_historico.imhi_nnparcelamento                IS 'Numero de parcelamentos';
COMMENT ON COLUMN cadastro.imovel_historico.imhi_nnreparcelamento              IS 'Numero de reparcelamentos';
COMMENT ON COLUMN cadastro.imovel_historico.imhi_nnreparcmtconsec              IS 'Numero de reparcelamentos consecutivos';
COMMENT ON COLUMN cadastro.imovel_historico.imhi_ddvencimento                  IS 'Dia do vencimento alternativo';
COMMENT ON COLUMN cadastro.imovel_historico.imhi_nniptu                        IS 'Numero do IPTU';
COMMENT ON COLUMN cadastro.imovel_historico.imhi_nncontratoenergia             IS 'Numero do contrato com a companhia de energia';
COMMENT ON COLUMN cadastro.imovel_historico.imhi_icemsextfatmt                 IS 'Indicador de emissao de extrato de faturamento (1_SIM, 2_NaO)';
COMMENT ON COLUMN cadastro.imovel_historico.imhi_icdebitoconta                 IS 'Indicador de debito em conta (1_SIM, 2_NaO)';
COMMENT ON COLUMN cadastro.imovel_historico.imhi_icexclusao                    IS 'Indicador de imovel excluido (1_SIM, 2_NaO)';
COMMENT ON COLUMN cadastro.imovel_historico.imhi_nncoordenadax                 IS 'Coordenada X ';
COMMENT ON COLUMN cadastro.imovel_historico.imhi_nncoordenaday                 IS 'Coordenada Y';
COMMENT ON COLUMN cadastro.imovel_historico.eanm_id                            IS 'Id da anormalidade do imovel';
COMMENT ON COLUMN cadastro.imovel_historico.cocr_id                            IS 'Id da ocorrência do imovel';
COMMENT ON COLUMN cadastro.imovel_historico.hidi_id                            IS 'Id do historico de instalacao de hidrometro no poco';
COMMENT ON COLUMN cadastro.imovel_historico.ltan_id                            IS 'Id da anormalidade de leitura para imoveis sem hidrometro fiscalizados na leitura';
COMMENT ON COLUMN cadastro.imovel_historico.imhi_tmultimaalteracao             IS 'DATA E HORA ATUAL';
COMMENT ON COLUMN cadastro.imovel_historico.cstf_id                            IS 'Id da tabela de tarifa associada ao imovel';
COMMENT ON COLUMN cadastro.imovel_historico.fttp_id                            IS 'Id do tipo de faturamento para o imovel';
COMMENT ON COLUMN cadastro.imovel_historico.edrf_id                            IS 'Id da referencia do numero do imovel';
COMMENT ON COLUMN cadastro.imovel_historico.logr_id                            IS 'Id do logradouro';
COMMENT ON COLUMN cadastro.imovel_historico.imhi_qteconomia                    IS 'Quantidade total de economias do imovel';
COMMENT ON COLUMN cadastro.imovel_historico.imhi_icsuspensaoabastecimento      IS 'Indicador de suspensao de abastecimento';
COMMENT ON COLUMN cadastro.imovel_historico.ftsm_id                            IS 'Id do faturamento situacao motivo';
COMMENT ON COLUMN cadastro.imovel_historico.imhi_nnareaconstruida              IS 'Medida da area construida do imovel em metros quadrados';
COMMENT ON COLUMN cadastro.imovel_historico.cbsp_id                            IS 'Id da cobranca situacao tipo';
COMMENT ON COLUMN cadastro.imovel_historico.bair_id                            IS 'Id do bairro associado ao endereco do imovel';
COMMENT ON COLUMN cadastro.imovel_historico.lgbr_id                            IS 'Id do logradouro bairro';
COMMENT ON COLUMN cadastro.imovel_historico.lgcp_id                            IS 'Identificacao do logradouro cep';
COMMENT ON COLUMN cadastro.imovel_historico.icte_id                            IS 'Id do tipo de envio da conta ao imovel';
COMMENT ON COLUMN cadastro.imovel_historico.imhi_icjardim                      IS 'Indicador de existencia de jardim (1_SIM, 2_Na0)';
COMMENT ON COLUMN cadastro.imovel_historico.imhi_nnsequencialrota              IS 'Sequencial da rota de leitura ';
COMMENT ON COLUMN cadastro.imovel_historico.imhi_nmimovel                      IS 'Nome do imovel';
COMMENT ON COLUMN cadastro.imovel_historico.func_id                            IS 'Id do funcionario';
COMMENT ON COLUMN cadastro.imovel_historico.imha_id                            IS 'Id do tipo de habitacao';
COMMENT ON COLUMN cadastro.imovel_historico.impr_id                            IS 'Id do tipo de propriedade';
COMMENT ON COLUMN cadastro.imovel_historico.imco_id                            IS 'Id do tipo de Construcao';
COMMENT ON COLUMN cadastro.imovel_historico.imcb_id                            IS 'Id do tipo de cobertura';
COMMENT ON COLUMN cadastro.imovel_historico.rota_identrega                     IS 'Id da rota de entrega';
COMMENT ON COLUMN cadastro.imovel_historico.imhi_nnsequencialrotaentrega       IS 'Numero da Sequencia da Rota de Entrega';
COMMENT ON COLUMN cadastro.imovel_historico.imhi_dtenviocontrato               IS 'Data envio do contrato de prestacao de servicos do funcionamento de agua e coleta de esgoto';
COMMENT ON COLUMN cadastro.imovel_historico.siac_id                            IS 'Codigo de Atualizacao (passar fixo em 0)';
COMMENT ON COLUMN cadastro.imovel_historico.logr_idinicioperimetro             IS 'Id do logradouro do inicio do perimetro';
COMMENT ON COLUMN cadastro.imovel_historico.logr_idfimperimetro                IS 'Id do logradouro do final do perimetro';
COMMENT ON COLUMN cadastro.imovel_historico.qdfa_id                            IS 'Id da face da quadra que o imovel esta localizado';
COMMENT ON COLUMN cadastro.imovel_historico.rota_idalternativa                 IS 'Id da rota alternativa';
COMMENT ON COLUMN cadastro.imovel_historico.imhi_nnmedidorenergia              IS 'Numero do medidor de energia';
COMMENT ON COLUMN cadastro.imovel_historico.imhi_dtvisitacomercial             IS 'Data da visita comercial';
COMMENT ON COLUMN cadastro.imovel_historico.imhi_icvencimentomesseguinte       IS 'Indicador se o dia de vencimento indicado do imovel e para o mes seguinte (1_Sim, 2_Nao)';
COMMENT ON COLUMN cadastro.imovel_historico.imhi_dsinformacaocomplementar      IS 'Informacoes complementares do imovel';
COMMENT ON COLUMN cadastro.imovel_historico.imhi_cddebitoautomatico            IS 'Codigo de debito automatico (imhi_ID no MODULO 11)';
COMMENT ON COLUMN cadastro.imovel_historico.imhi_icreincidenciainfracao        IS 'Indica se o imovel ja realizou algum tipo de fraude, caracterizando reincidencia.';
COMMENT ON COLUMN cadastro.imovel_historico.imhi_nnquadraentrega               IS 'Numero da quadra de entrega do imovel';
COMMENT ON COLUMN cadastro.imovel_historico.imhi_amrefexclusaotarifasocial     IS 'Ano/Mes referencia que o imovel foi excluido da tarifa social por motivo de media de consumo superior ao limite definido';
COMMENT ON COLUMN cadastro.imovel_historico.imhi_icnivelinstalacaoesgoto       IS 'Indicador se existe nivel para instalacao de esgoto 1-SIM, 2-Nao';
COMMENT ON COLUMN cadastro.imovel_historico.imhi_icimovelareacomum             IS 'Indica se  imovel e utilizado para rateio por area comum';
COMMENT ON COLUMN cadastro.imovel_historico.imhi_idcategoriaprincipal          IS 'Categoria principal do imovel';
COMMENT ON COLUMN cadastro.imovel_historico.imhi_idsubcategoriaprincipal       IS 'Subcategoria principal do imovel';
COMMENT ON COLUMN cadastro.imovel_historico.imhi_classe_social                 IS '1 - Alta | 2 - Media | 3 - Baixa | 4 - Sub';
COMMENT ON COLUMN cadastro.imovel_historico.imhi_quantidade_animais_domesticos IS 'Quantidade de animais domesticos no imovel';
COMMENT ON COLUMN cadastro.imovel_historico.imhi_vol_piscina                   IS 'Volume da piscina em metros cubicos';
COMMENT ON COLUMN cadastro.imovel_historico.imhi_vol_cisterna                  IS 'Volume da cisterna';
COMMENT ON COLUMN cadastro.imovel_historico.imhi_vol_cx_dagua                  IS 'Volume da caixa de agua';
COMMENT ON COLUMN cadastro.imovel_historico.imhi_tipo_uso                      IS '1 - dormitorio | 2 - morada | 3 - veraneio | 4 - outros';
COMMENT ON COLUMN cadastro.imovel_historico.imhi_acesso_hidrometro             IS '1 - bom | 2 - ruim | 3 - sem';
COMMENT ON COLUMN cadastro.imovel_historico.imhi_qtd_economias_social          IS 'Quantidade de economias para social';
COMMENT ON COLUMN cadastro.imovel_historico.imhi_qtd_economias_outra           IS 'Quantidade de economias para outra';
COMMENT ON COLUMN cadastro.imovel_historico.imhi_percentual_abastecimento      IS '25% | 50% | 75% | 100%';
COMMENT ON COLUMN cadastro.imovel_historico.usur_id                            IS 'Usuario responsavel pela alteracao';



CREATE SEQUENCE cadastro.seq_imovel_historico
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 1
  CACHE 1;
ALTER TABLE                   cadastro.seq_imovel_historico OWNER TO gsan_admin;
GRANT ALL ON TABLE            cadastro.seq_imovel_historico TO gsan_admin;
GRANT SELECT, UPDATE ON TABLE cadastro.seq_imovel_historico TO role_aplic;
GRANT SELECT ON TABLE         cadastro.seq_imovel_historico TO role_users;

-- //@UNDO
-- SQL to undo the change goes here.


drop table    cadastro.imovel_historico;
drop sequence cadastro.seq_imovel_historico;