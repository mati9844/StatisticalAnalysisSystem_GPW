%MACRO wykresy_dzienne;
%DO i = 2018 %TO 2020;
proc sgplot data = GPW.Kruk_trzy_lata_&i;
SERIES X=Data Y=kurs_sredni;
title 'Srednie notowania dzienne w roku ' &i;
%END;
%MEND wykresy_dzienne;
%wykresy_dzienne;

*!*
