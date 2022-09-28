data GPW.Kruk_przyrosty;
retain kurs_poczatkowy;
retain kurs_koncowy;
set GPW.Kruk_R end=eof curobs=observ1;
if observ1 = 1 then do;
kurs_poczatkowy = kurs_sredni;
end;
if eof then do;
kurs_koncowy = kurs_sredni;
stopa_zwrotu = ((kurs_koncowy - kurs_poczatkowy)/kurs_poczatkowy)*100;
end;
przyrost_absolutny = kurs_sredni - kurs_poczatkowy;
przyrost_wzgledny = (kurs_sredni - kurs_poczatkowy)/kurs_poczatkowy;
run;
