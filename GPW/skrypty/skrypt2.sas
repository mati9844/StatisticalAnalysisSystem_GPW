%MACRO dodajTabele;
%DO i = 2002 %TO 2021;
PROC SQL;
CREATE TABLE GPW.KRUK_rok&i AS
SELECT * FROM GPW.KRUK
WHERE Data
LIKE ("&i"||"%");
QUIT;
RUN;
%END;
%MEND dodajTabele;
%dodajTabele;
*!*
