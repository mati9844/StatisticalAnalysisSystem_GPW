proc means data = GPW.Kruk_przyrosty mean;
by rok;
var przyrost_wzgledny przyrost_absolutny;
output out = GPW.Kruk_przyrosty_roczne mean=;
format przyrost_wzgledny 8.2 przyrost_absolutny 8.2;
run;
