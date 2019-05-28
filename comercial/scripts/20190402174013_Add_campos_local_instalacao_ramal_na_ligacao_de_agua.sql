-- // Add campos local instalacao ramal na ligacao de agua
-- Migration SQL that makes the change goes here.

alter table atendimentopublico.ligacao_agua add column lagu_profundidade_ramal numeric(7,2);

alter table atendimentopublico.ligacao_agua add column lagu_dist_inst_ramal numeric(7,2);

alter table atendimentopublico.ligacao_agua add column prua_id integer;

alter table atendimentopublico.ligacao_agua add constraint fk17_ligacao_agua foreign key (prua_id) references cadastro.pavimento_rua(prua_id);

alter table atendimentopublico.ligacao_agua add column pcal_id integer;

alter table atendimentopublico.ligacao_agua add constraint fk18_ligacao_agua foreign key (pcal_id) references cadastro.pavimento_calcada(pcal_id);

-- //@UNDO
-- SQL to undo the change goes here.

alter table atendimentopublico.ligacao_agua drop constraint fk17_ligacao_agua;

alter table atendimentopublico.ligacao_agua drop constraint fk18_ligacao_agua;

alter table atendimentopublico.ligacao_agua drop column lagu_profundidade_ramal;

alter table atendimentopublico.ligacao_agua drop column lagu_dist_inst_ramal;

alter table atendimentopublico.ligacao_agua drop column prua_id;

alter table atendimentopublico.ligacao_agua drop column pcal_id;
