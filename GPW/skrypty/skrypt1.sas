LIBNAME GPW 'C:\SAS\GPW';
proc import out=GPW.KRUK
file="C:\SAS\GPW\KRUK"
dbms=xls replace;
getnames=yes;
run;
