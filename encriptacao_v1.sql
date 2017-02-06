create or replace FUNCTION MY_CRYPTO_SHA2
(VALUE IN VARCHAR2) RETURN VARCHAR2 AS
l_hash raw(20000);
BEGIN
l_hash := dbms_crypto.hash ( UTL_I18N.STRING_TO_RAW (value,
'AL32UTF8'), dbms_crypto.hash_sh256);
RETURN to_char(l_hash);
END MY_CRYPTO_SHA2;
/

update bd_clientes SET PASSWORD=MY_CRYPTO_SHA2(PASSWORD);

grant execute on my_crypto_sha2 to scott;