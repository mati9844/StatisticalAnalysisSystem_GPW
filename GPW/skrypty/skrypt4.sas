%MACRO exportdoXLS;
%DO i = 2002 %TO 2021;
proc export
data = GPW.KRUK_rok&i
dbms = xls
outfile = "C:\SAS\GPW\KRUK_rok&i.xls"
replace;
RUN;
%END;
%MEND exportodoXLS;
%exportdoXLS;
*!*
