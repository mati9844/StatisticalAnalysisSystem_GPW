data GPW.EUR_USD_KRUK;
set GPW.EUR_USD_KRUK;
if cmiss ( of usd_sredni euro_sredni kurs_sredni) then delete;
run;
