data work.cars_usa;
  set sashelp.cars;
  where origin = "USA";
run;

proc print data=work.cars_usa (obs=10);
run;

proc freq data=work.cars_usa;
  by Type;
run;