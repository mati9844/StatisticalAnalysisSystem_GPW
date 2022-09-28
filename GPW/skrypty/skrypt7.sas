%MACRO wykresy_tygodniowe;
%DO i = 2018 %TO 2021;
proc sgplot data = GPW.Kruk_tygodnie_rok&i
(where = (_STAT_ = 'MEAN'));
SERIES X = tydzien Y = kurs_sredni;
title "Srednie notowania tygodniowe w roku " &i;
%END;
%MEND wykresy_tygodniowe;
%wykresy_tygodniowe
