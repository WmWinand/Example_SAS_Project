data cars_usa;
  set sashelp.cars;
  where origin = 'USA' & invoice < 25000;
run;

proc print data=cars_usa (obs=10);
run;