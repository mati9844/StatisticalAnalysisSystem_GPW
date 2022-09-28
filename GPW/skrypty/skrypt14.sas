proc means data = GPW.Kruk_stopazw mean;
by rok;
var stopa_zwrotu;
output out = GPW.Kruk_stopazw_roczne mean=;
format stopa_zwrotu 8.2;
run;
