/* SET SAS LIBREF */
%let mydata = D:\MyDemos\Data;
/* libname mydata "/greenmonthly-export/ssemonthly/homes/T.Winand@sas.com/Git_Repo/data"; */
/* libname mydata "/innovationlab-export/innovationlab/homes/T.Winand@sas.com/Data/Datasets"; */


/* libname mydblib hadoop  */
/*                   user=myusr1  */
/*                   password=mypwd1  */
/*                   server=hadoopsvr  */
/*                   schema=hrdept;  */



/* THIS IS AN EXAMPLE OF A VERY SIMPLE DATA STEP */
data work.class;
  set sashelp.class;
run;


/* THIS IS AN EXAMPLE OF A SIMPLE PROCEDURE WITH CHANGES */
proc print data=class (obs=10);
  var name sex age weight;
run;

