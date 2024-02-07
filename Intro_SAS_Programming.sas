/*****************************************************/
/* This program introduces basic SAS programming     */
/* concepts to programmers new to SAS - CHANGE       */
/*****************************************************/

/* SET SAS LIBREF */
/* libname mydata "/greenmonthly-export/ssemonthly/homes/T.Winand@sas.com/Git_Repo/data"; */
libname mydata "/innovationlab-export/innovationlab/homes/T.Winand@sas.com/Data/Datasets";


/* libname mydblib hadoop  */
/*                   user=myusr1  */
/*                   password=mypwd1  */
/*                   server=hadoopsvr  */
/*                   schema=hrdept;  */



/* THIS IS AN EXAMPLE OF A VERY SIMPLE DATA STEP */
data work.class;
  set sashelp.class;
run;

/* THIS IS AN EXAMPLE OF A SIMPLE PROCEDURE */
proc print data=work.class;
run;
