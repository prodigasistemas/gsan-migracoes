-- // Nova tabela - mensagem de parcelamento
-- Migration SQL that makes the change goes here.

CREATE TABLE cobranca.msg_parcelamento_boleto
(
  mspb_id integer NOT NULL,
  mspb_dtiniciovigencia date,
  mspb_dtfimvigencia date,
  mspb_mensagem text NOT NULL,
  mspb_tmultimaalteracao timestamp without time zone NOT NULL DEFAULT now(),
  CONSTRAINT msg_parcelamento_boleto_pkey PRIMARY KEY (mspb_id)
)
WITH (
  OIDS=FALSE
);
ALTER TABLE cobranca.msg_parcelamento_boleto
  OWNER TO gsan_admin;
GRANT ALL ON TABLE cobranca.msg_parcelamento_boleto TO gsan_admin;
GRANT SELECT, UPDATE, INSERT, DELETE ON TABLE cobranca.msg_parcelamento_boleto TO role_aplic;
GRANT SELECT ON TABLE cobranca.msg_parcelamento_boleto TO role_users;


CREATE SEQUENCE cobranca.seg_msg_parcelamento_boleto
  INCREMENT 1
  MINVALUE 1
  MAXVALUE 9223372036854775807
  START 6
  CACHE 1;
ALTER TABLE cobranca.seg_msg_parcelamento_boleto
  OWNER TO gsan_admin;
GRANT ALL ON TABLE cobranca.seg_msg_parcelamento_boleto TO gsan_admin;
GRANT SELECT, UPDATE ON TABLE cobranca.seg_msg_parcelamento_boleto TO role_aplic;
GRANT SELECT ON TABLE cobranca.seg_msg_parcelamento_boleto TO role_users;

insert into cobranca.msg_parcelamento_boleto values (
nextval('cobranca.seg_msg_parcelamento_boleto'), now(), null, 
'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tempus, neque id tempor tempus, purus ante accumsan urna, vel maximus tortor ante nec quam. Nulla luctus fermentum tincidunt. Aenean risus arcu, sollicitudin molestie urna vitae, consectetur vestibulum ex. Phasellus ultricies semper purus. Duis aliquet rhoncus molestie. Morbi quis maximus ipsum. Aliquam quis scelerisque risus. Nunc porttitor dictum dui, in rutrum velit elementum eu. Integer nec dolor aliquam, ornare magna in, auctor sapien. Mauris rutrum lectus et lectus volutpat consectetur. Proin feugiat, eros et consectetur finibus, leo elit scelerisque enim, sed rhoncus leo nulla sit amet turpis. Etiam sit amet mi ut elit hendrerit mattis. Nam sollicitudin ante mauris, at dapibus nibh eleifend et. Vestibulum sodales tellus eu iaculis pulvinar.', 
now());

-- //@UNDO
-- SQL to undo the change goes here.

drop sequence cobranca.seg_msg_parcelamento_boleto;
drop table cobranca.msg_parcelamento_boleto;
