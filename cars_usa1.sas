
Data work.cars_usa;
  Set sashelp.cars;
  If origin='USA';
Run;
