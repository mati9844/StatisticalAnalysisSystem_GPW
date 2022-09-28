%MACRO wykresy_miesieczne;
%DO i = 2018 %TO 2020;
proc sgplot data = GPW.Kruk_trzy_lata_&i;
SERIES X = miesiac Y = kurs_sredni;
title "Srednie notowania miesieczne w roku " &i;
%END;
%MEND wykresy_miesieczne;
%wykresy_miesieczne
