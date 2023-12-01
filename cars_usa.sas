data work.cars_usa;
  set sashelp.cars;
  where origin = "USA";
run;

proc print data=work.cars_usa;
run;