Create database healthcare_proj;

use healthcare_proj;

SHOW variables LIKE "secure_file_priv";

create table hospital_quarterly_report (	
FAC_NO	 varchar (100)
,FAC_NAME	varchar(500)
,YEAR_QTR	 varchar (100)
,year	 varchar (100)
,Quarter	 varchar (100)
,BEG_DATE	varchar(100),
END_DATE	varchar(100),
OP_STATUS	varchar(100),
COUNTY_NAME	varchar(100),
HSA 	varchar(100),
HFPA	varchar(100),
TYPE_CNTRL	varchar(500),
TYPE_HOSP	varchar(100),
TEACH_RURL	varchar(100),
PHONE	varchar(100),
ADDRESS	varchar(100),
CITY	varchar(100),
ZIP_CODE	 varchar (100),
CEO	varchar(100),
LIC_BEDS	 varchar (100),
AVL_BEDS	 varchar (100),
STF_BEDS	 varchar (100),
DIS_MCAR	 varchar (100),
DIS_MCAR_MC	 varchar (100),
DIS_MCAL	 varchar (100),
DIS_MCAL_MC	 varchar (100),
DIS_CNTY	 varchar (100),
DIS_CNTY_MC	 varchar (100),
DIS_THRD	 varchar (100),
DIS_THRD_MC	 varchar (100),
DIS_INDGNT	 varchar (100),
DIS_OTH	 varchar (100),
DIS_TOT	 varchar (100),
DIS_LTC	 varchar (100),
DAY_MCAR	 varchar (100),
DAY_MCAR_MC	 varchar (100),
DAY_MCAL	 varchar (100),
DAY_MCAL_MC	 varchar (100),
DAY_CNTY	 varchar (100),
DAY_CNTY_MC	 varchar (100),
DAY_THRD	 varchar (100),
DAY_THRD_MC	 varchar (100),
DAY_INDGNT	 varchar (100),
DAY_OTH	 varchar (100),
DAY_TOT	 varchar (100),
DAY_LTC	 varchar (100),
VIS_MCAR	 varchar (100),
VIS_MCAR_MC	 varchar (100),
VIS_MCAL	 varchar (100),
VIS_MCAL_MC	 varchar (100),
VIS_CNTY	 varchar (100),
VIS_CNTY_MC	 varchar (100),
VIS_THRD	 varchar (100),
VIS_THRD_MC	 varchar (100),
VIS_INDGNT	 varchar (100),
VIS_OTH	 varchar (100),
VIS_TOT	 varchar (100),
GRIP_MCAR	 varchar (100),
GRIP_MCAR_MC	 varchar (100),
GRIP_MCAL	 varchar (100),
GRIP_MCAL_MC	 varchar (100),
GRIP_CNTY	 varchar (100),
GRIP_CNTY_MC	 varchar (100),
GRIP_THRD	 varchar (100),
GRIP_THRD_MC	 varchar (100),
GRIP_INDGNT	 varchar (100),
GRIP_OTH	 varchar (100),
GRIP_TOT	 varchar (100),
GROP_MCAR	 varchar (100),
GROP_MCAR_MC	 varchar (100),
GROP_MCAL	 varchar (100),
GROP_MCAL_MC	 varchar (100),
GROP_CNTY	 varchar (100),
GROP_CNTY_MC	 varchar (100),
GROP_THRD	 varchar (100),
GROP_THRD_MC	 varchar (100),
GROP_INDGNT	 varchar (100),
GROP_OTH	 varchar (100),
GROP_TOT	 varchar (100),
BAD_DEBT	 varchar (100),
CADJ_MCAR	 varchar (100),
CADJ_MCAR_MC	 varchar (100),
CADJ_MCAL	 varchar (100),
CADJ_MCAL_MC	 varchar (100),
DISP_855	 varchar (100),
CADJ_CNTY	 varchar (100),
CADJ_CNTY_MC	 varchar (100),
CADJ_THRD	 varchar (100),
CADJ_THRD_MC	 varchar (100),
CHAR_HB	 varchar (100),
CHAR_OTH	 varchar (100),
SUB_INDGNT	 varchar (100),
TCH_ALLOW	 varchar (100),
TCH_SUPP	 varchar (100),
DED_OTH	 varchar (100),
DED_TOT	 varchar (100),
CAP_MCAR	 varchar (100),
CAP_MCAL	 varchar (100),
CAP_CNTY	 varchar (100),
CAP_THRD	 varchar (100),
CAP_TOT	 varchar (100),
NET_MCAR	 varchar (100),
NET_MCAR_MC	 varchar (100),
NET_MCAL	 varchar (100),
NET_MCAL_MC	 varchar (100),
NET_CNTY	 varchar (100),
NET_CNTY_MC	 varchar (100),
NET_THRD	 varchar (100),
NET_THRD_MC	 varchar (100),
NET_INDGNT	 varchar (100),
NET_OTH	 varchar (100),
NET_TOT	 varchar (100),
OTH_OP_REV	 varchar (100),
TOT_OP_EXP	 varchar (100),
PHY_COMP	 varchar (100),
NONOP_REV	 varchar (100),
DIS_PIPS	 varchar (100),
DAY_PIPS	 varchar (100),
EXP_PIPS	 varchar (100),
EXP_POPS	 varchar (100),
CAP_EXP	 varchar (100),
FIX_ASSETS	 varchar (100),
DISP_TRNFR	 varchar (100),
DIS_TOT_CC	 varchar (100),
PAT_DAY_TOT_CC	 varchar (100),
TOT_OUT_VIS_CC	 varchar (100),
GROS_INPAT_REV_CC	 varchar (100),
GROS_OUTPAT_REV_CC	 varchar (100),
CONTR_ADJ_CC	 varchar (100),
OTHR_DEDUCT_CC	 varchar (100),
CAP_PREM_REV_CC	 varchar (100),
NET_PAT_REV_CC	 varchar (100),
QA_FEES	 varchar (100),
QA_SUPPL_PAY	 varchar (100),
MNGD_CARE_QA_PAY	 varchar (500));

show tables;
 
LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\Healthcare_proj.csv' INTO TABLE hospital_quarterly_report
  FIELDS TERMINATED BY ',' ENCLOSED BY '"'  
  LINES terminated by '\n'
  ignore 1 lines;



select * from hospital_quarterly_report;
  
show tables;
desc hospital_quarterly_report;

#################################################################################################################################
#1. TOTAL DISCHARGE
#################################################################################################################################

# Year_wise Discharge
select 
year
,sum(dis_tot) as Total_Discharge 
from hospital_quarterly_report
group by year 
order by Total_Discharge desc;

# Quarter_wise DischargeE
select 
Quarter
,sum(dis_tot) as Total_Discharge 
from hospital_quarterly_report
group by Quarter 
order by Total_Discharge desc;


#################################################################################################################################
# 2. Patient days
#################################################################################################################################


select
year
,sum(DAY_MCAR) as Medicare_Traditional
,sum(DAY_MCAL) as Medi_ca_Traditional
,sum(DAY_CNTY) as County_Indigent_Programs_Traditional
,sum(DAY_THRD) as Other_Third_Parties_Traditional
,sum(DAY_INDGNT) as Other_Indigent
from hospital_quarterly_report
group by year
order by year;



#################################################################################################################################
#3 . Net Pateint Revenue
#################################################################################################################################


select
year
,sum(NET_TOT) as Total_Revenue
,round(avg(NET_TOT),2) as Average_Revenue
from hospital_quarterly_report
group by year 
order by Total_Revenue;


#################################################################################################################################
# 4. Patient Stays
#################################################################################################################################

select 
year,
round(sum(day_tot)/sum(dis_tot),2) as Average_length_stay
from hospital_quarterly_report
group by year
order by year;


#################################################################################################################################
# 5. State Wise No of hospital /Revenue 
#################################################################################################################################

select 
county_name
,count(type_hosp) as Count_Hospital_type
from hospital_quarterly_report
group by county_name
order by county_name;

#################################################################################################################################
# 6. Type Of hospital Revenue
#################################################################################################################################

select 
type_hosp as Hospital_type
,sum(net_tot) as Total_revenue
from hospital_quarterly_report
group by Hospital_type
order by Hospital_type ;


#################################################################################################################################
# 7. MTD/QTD/YTD Revenue
#################################################################################################################################

select 
year
,concat('$',sum(net_tot)) as YTD
from hospital_quarterly_report
group by year;

#################################################################################################################################
# 8. Revenue Trend  
#################################################################################################################################

select 
year,
concat('$',sum(GROP_TOT)) as Outpatient_revenue,
concat('$',sum(GRIP_TOT)) as Inpatient_Revenue
from hospital_quarterly_report
group by year;
