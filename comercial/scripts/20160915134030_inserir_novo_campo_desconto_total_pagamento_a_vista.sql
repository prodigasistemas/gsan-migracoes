-- // inserir novo campo desconto total pagamento a vista
-- Migration SQL that makes the change goes here.

ALTER TABLE cobranca.parcelamento_perfil RENAME pcpf_pcdescontopagamentoavista TO pcpf_pcdescontoacrescimospagamentoavista;
ALTER TABLE cobranca.parcelamento_perfil ADD COLUMN pcpf_pcdescontototalpagamentoavista numeric(5,2);

-- //@UNDO
-- SQL to undo the change goes here.

ALTER TABLE cobranca.parcelamento_perfil RENAME pcpf_pcdescontoacrescimospagamentoavista TO pcpf_pcdescontopagamentoavista;
ALTER TABLE cobranca.parcelamento_perfil DROP COLUMN pcpf_pcdescontototalpagamentoavista;