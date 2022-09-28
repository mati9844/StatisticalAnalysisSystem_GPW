proc import datafile = "C:\SAS\GPW\kursy_usd_euro.csv"
DBMS = CSV
OUT = GPW.EUR_USD_TO_PLN
REPLACE;
getnames=YES;
datarow=2;
run;
