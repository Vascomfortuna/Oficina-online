create or replace procedure ws_busca_marcas is
v_request_handle UTL_HTTP.REQ;
v_response_handle UTL_HTTP.RESP;
lv_response_line varchar(32767);
BEGIN
v_request_handle := UTL_HTTP.BEGIN_REQUEST('fipeapi.appspot.com/api/1/carros/marcas.json');
UTL_HTTP.SET_HEADER(v_request_handle, 'User-Agent', 'Mozilla/4.0');
v_response_handle := UTL_HTTP.GET_RESPONSE(v_request_handle);
UTL_HTTP.READ_LINE(v_response_handle, lv_response_line, TRUE);
htp.p(lv_response_line);
EXCEPTION
WHEN UTL_HTTP.END_OF_BODY THEN
UTL_HTTP.END_RESPONSE(v_response_handle);
END;
/

create or replace procedure ws_busca_modelos(id_modelo number) is
v_request_handle UTL_HTTP.REQ;
v_response_handle UTL_HTTP.RESP;
lv_response_line VARCHAR2(32767);
BEGIN
v_request_handle := UTL_HTTP.BEGIN_REQUEST('http://fipeapi.appspot.com/api/1/carros/veiculos/'||id_modelo||'.json');
UTL_HTTP.SET_HEADER(v_request_handle, 'User-Agent', 'Mozilla/4.0');
UTL_HTTP.set_header (v_request_handle, 'Transfer-Encoding', 'chunked' );
v_response_handle := UTL_HTTP.GET_RESPONSE(v_request_handle);
LOOP
UTL_HTTP.READ_TEXT(v_response_handle, lv_response_line, 32000);
htp.p(lv_response_line);
END LOOP;
EXCEPTION
WHEN UTL_HTTP.END_OF_BODY THEN
UTL_HTTP.END_RESPONSE(v_response_handle);
END;
/

grant execute on ws_busca_marcas to scott;
grant execute on ws_busca_modelos to scott;