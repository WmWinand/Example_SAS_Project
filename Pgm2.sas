data work.cars_usa;
  set sashelp.cars;
  if origin = "USA";
  run;

  proc print data
=cars_usa; run;