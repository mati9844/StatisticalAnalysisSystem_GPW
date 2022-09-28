LIBNAME GPW 'C:\SAS\GPW';
data GPW.Kruk_R;
set GWP.Kruk(keep=Data Kurs_otwarcia Kurs_zamkniecia );
kurs_sredni = (Kurs_otwarcia + Kurs_zamkniecia) /2;
data_2 = INPUT(Data, yymmdd10.);
rok = year(data_2);
tydzien = week(data_2);
miesiac = month(data_2);
drop Data;
format data_2 yymmdd10.;
RUN;
*@*
