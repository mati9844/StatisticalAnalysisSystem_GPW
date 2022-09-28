LIBNAME GPW1 access "C:\SAS\GPW\baza.mdb";
%MACRO dodajTabeledoGPW1;
%DO i = 2002 %TO 2021;
PROC export
data= GPW.KRUK_rok&i
outtable="dane_roczne_&i"
dbms= access replace;
database="C:\SAS\GPW\baza.mdb";
RUN;
%END;
%MEND dodajTabele;
%dodajTabeledoGPW1;
*!*
