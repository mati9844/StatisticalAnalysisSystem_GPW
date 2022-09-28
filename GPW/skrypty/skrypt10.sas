data GPW.Kruk_R;
set GPW.Kruk(keep=Data Kurs_otwarcia Kurs_zamkniecia );
kurs_sredni = (Kurs_otwarcia + Kurs_zamkniecia) /2;
data_2 = Input(Data, yymmdd10.);
rok = year(data_2);
drop Data;
drop data_2;
run;
