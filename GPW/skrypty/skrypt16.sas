data GPW.Kruk_2020_stat;
set GPW.Kruk_trzy_lata_2020(keep=Data kurs_sredni);
data_2 = INPUT(Data, yymmdd10.);
rok = year(data_2);
miesiac = month(data_2);
tydzien = week(data_2);
drop Data Kurs_otwarcia Kurs_zamkniecia Tydzien Miesiac Rok;
format data_2 YYMMDD10.;
run;
