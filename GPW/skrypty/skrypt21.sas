proc expand data = GPW.Kruk_2020_stat
out = GPW.Kruk_2020_stat_d
from=day;
id data;
convert kurs_sredni;
run;
