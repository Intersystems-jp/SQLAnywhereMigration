drop function dba.f_irisage2
go
CREATE FUNCTION dba.f_irisage2(IN bdate timestamp, IN cdate timestamp)
RETURNS decimal(5,2)
LANGUAGE OBJECTSCRIPT
{
 set bdate = $zdateh(bdate,3)
 set cdate = $zdateh(cdate,3)
 
 if ((cdate - bdate) < 0) {
   set sdate = cdate
   set edate = bdate
   set past = 1
 }
 else {
   set sdate = bdate
   set edate = cdate
   set past = 0
 }
 
 set ymd1 = $zdate(sdate,8)
 set ymd2 = $zdate(edate,8)
 set age = (ymd2-ymd1)\10000
 
 if ($system.SQL.Functions.DAYOFMONTH(edate) < $system.SQL.Functions.DAYOFMONTH(sdate)) {
   set offset = 1
 }
 else {
   set offset = 0
 }
 set age = age+(($system.SQL.Functions.DATEDIFF("MONTH",sdate,edate)-offset-(age*12))/100)
 if past set age = -age
 quit age
}
go