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

/* DATA STEP CREATING A CALCULATED VARIABLE */
data class;
  set sashelp.class;
  bmi = (weight / (height*height)) * 703;
run;

/* DATA STEP CREATING MULTIPLE OUTPUT DATASETS & FORMATTING BMI */
data class_m_bmi class_f_bmi;
	set sashelp.class;
	format bmi comma6.3;
	bmi=(weight / (height*height)) * 703;

	if sex='M' then
		output class_m_bmi;
	else if sex='F' then
		output class_f_bmi;
run;


