/*test git conflict handling*/

<<<<<<< HEAD
proc print data=sashelp.cars (obs=10);
run;

data cars_usa;
  set sashelp.cars;
  where origin = 'USA';
  run;
=======
proc print data=sashelp.cars;
run;
>>>>>>> main
