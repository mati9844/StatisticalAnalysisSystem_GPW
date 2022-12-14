%MACRO TrzyLataKruk;
%DO i = 2018 %TO 2020;
data GPW.Kruk_trzy_lata_&i;
set GPW.Kruk_rok&i(keep= Data Kurs_otwarcia Kurs_zamkniecia);
kurs_sredni = (Kurs_otwarcia + Kurs_zamkniecia)/ 2;
tydzien = week(input(Data, yymmdd10.));
miesiac = substr(Data, 6, 2);
run;
data GPW.Kruk_miesiace_rok&i;
proc means data= GPW.Kruk_trzy_lata_&i mean std median min max;
by miesiac;
output out= GPW.Kruk_miesiace_rok&i;
run;
data GPW.Kruk_tygodnie_rok&i;
proc means data= GPW.Kruk_trzy_lata_&i mean std median min max;
by tydzien;
output out= GPW.Kruk_tygodnie_rok&i;
run;
%END;
%MEND TrzyLataKruk;
%TrzyLataKruk;
*!*
