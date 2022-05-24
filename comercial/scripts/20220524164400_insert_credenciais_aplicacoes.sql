-- // insert_das credenciais das aplicações que terão acesso a GSAN-API 
-- Migration SQL that makes the change goes here.

INSERT INTO public.oauth_applications(
	id, name, uid, secret, redirect_uri, scopes, confidential, created_at, updated_at)
	VALUES (1, 'gsan', 'T3tdJATUBLyf_NyKgT5PjYOYq3I6N725QAb8y2rKj0k', 'l1vE2iFVShHb0vVrIV_cwdJ_qdBd1Ff72Rt7gtOu4HU', '', '', true, now(), now());

INSERT INTO public.oauth_applications(
	id, name, uid, secret, redirect_uri, scopes, confidential, created_at, updated_at)
	VALUES (2, 'pagplan', 'YE_lzyZty7AV6BRdXxSqpOcVCxGWQkShjP5ztSgh0ow', 'zR2YdWvqs_xzUXctdydi-pX6eytEqXSkHLTxrVyaxgs', '', '', true, now(), now());

INSERT INTO public.oauth_applications(
	id, name, uid, secret, redirect_uri, scopes, confidential, created_at, updated_at)
	VALUES (3, 'pagplan', 'DDUn-8lab9rg-UrD-4MGkeIW9Hg-sV4a2sHxtd-stY0', 'LvJJs0ytHNKi0zkDfR3hY5RXNXxyo6mq7o8Wbm0IUWk', '', '', true, now(), now());

-- //@UNDO
-- SQL to undo the change goes here.

	DELETE FROM public.oauth_applications WHERE id in (1, 2, 3)
