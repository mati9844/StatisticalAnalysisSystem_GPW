data GPW.Kruk_stopazw;
retain kurs_poczatkowy;
retain kurs_koncowy;
set GPW.Kruk_R;
kurs_poczatkowy = Kurs_otwarcia;
kurs_koncowy = Kurs_zamkniecia;
stopa_zwrotu = ((kurs_koncowy - kurs_poczatkowy)/kurs_poczatkowy)*100;
run;
