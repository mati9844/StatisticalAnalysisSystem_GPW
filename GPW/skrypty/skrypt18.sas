data GPW.EUR_USD_KRUK;
merge GPW.EUR_USD_TO_PLN GPW.Kruk_2020_stat;
by data;
run;
