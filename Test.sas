proc print data=sashelp.cars (obs=10);
run;

data cars_usa;
  set sashelp.cars;
  if origin = "USA";
  run;

  proc print data=cars_usa(obs=10);
  run;
