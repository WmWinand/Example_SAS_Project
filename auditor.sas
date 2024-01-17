/*
auditor.sas
This code will audit a SAS data set.

The measurements we will be taking are:
number of observations
number of variables
modification date

This code is example code and comes with no warranties :)
*/

%let pathname = "/greenmonthly-export/ssemonthly/homes/T.Winand@sas.com/Data/Git_Data";

libname test &pathname;

%macro create_test_data; 
    libname test &pathname; 

    data test.test_data; 
      do i = 1 to 10; 
        output; 
      end; 
    run; 

%mend create_test_data; 

%create_test_data;
