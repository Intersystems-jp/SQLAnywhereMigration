drop function dba.f_irisage
go
CREATE FUNCTION dba.f_irisage(IN bdate timestamp, IN cdate timestamp)
RETURNS decimal(5,2)
LANGUAGE OBJECTSCRIPT
{
 set bdate = $zdateh(bdate,3)
 set cdate = $zdateh(cdate,3)
 
 set ymd1 = $zdate(bdate,8)
 set ymd2 = $zdate(cdate,8)
 set age = (ymd2-ymd1)\10000
 
 if ($system.SQL.Functions.DAYOFMONTH(cdate) < $system.SQL.Functions.DAYOFMONTH(bdate)) {
   set offset = 1
 }
 else {
   set offset = 0
 }
 set age = age+(($system.SQL.Functions.DATEDIFF("MONTH",bdate,cdate)-offset-(age*12))/100)
 quit age
}
go