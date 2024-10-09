/*
auditor.sas
This code will audit a SAS data set.

The measurements we will be taking are:
number of observations
number of variables
modification date

This code is example code and comes with no warranties :)
*/

%if &sysscp = WIN
%then %do;
  %let pathname = "C:/Users/sasdemo/Documents/My SAS Files/github";
%end;
%else %do;
  /* %let pathname = "/workshop/gelcontent/Data"; */
  %let pathname = "/innovationlab-export/innovationlab/homes/T.Winand@sas.com/Data/Datasets";

%end;

%put &pathname;

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

%macro create_measurements; 

%let exist = %sysfunc( exist(test.test_data) ); 
%if not &exist %then %goto term; 

data measurements; 
  dsid = open('test.test_data'); 
  nobs = attrn(dsid,'nobs'); 
  nvars = attrn(dsid,'nvars'); 
  modte = datepart( attrn(dsid,'modte') ); * no need for the time; 
  rc = close(dsid); 
  audit_date = today(); 
  drop rc dsid; 
run; 
%return; 

%term: 
  %put the data set does not exist; 
%mend create_measurements; 

proc print data=measurements;
run;

%create_measurements;




