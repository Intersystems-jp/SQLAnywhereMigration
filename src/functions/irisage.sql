drop function dba.f_irisage
go
CREATE FUNCTION dba.f_irisage(IN bdate date, IN cdate date)
RETURNS decimal(5,2)
LANGUAGE OBJECTSCRIPT
{
 set ymd1 = $zdate(bdate,8)
 set ymd2 = $zdate(cdate,8)
 set ydiff = ymd2-ymd1
 set age = ydiff\10000
 
 if ydiff < 0 {
   set age = age - 1	
 }
 
 if ($system.SQL.Functions.DAYOFMONTH(cdate) < $system.SQL.Functions.DAYOFMONTH(bdate)) {
   set offset = 1
 }
 else {
   set offset = 0
 }
 set age = age+(($system.SQL.Functions.DATEDIFF("MONTH",bdate,cdate)-offset-(age*12)/100))
 quit age
}
go