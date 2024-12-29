CREATE FUNCTION iris.f_age(IN bdate date, IN cdate date)
RETURNS decimal(5,2)
LANGUAGE OBJECTSCRIPT
{
 set ymd1 = $zdate(bdate,8)
 set ymd2 = $zdate(cdate,8)
 set age = (ymd2-ymd1)\10000
 if ($system.SQL.Functions.DATE(cdate) < $system.SQL.Functions.DATE(bdate)) {
   set offset = 1
 }
 else {
   set offset = 0
 }
 set age = age+(($system.SQL.Functions.DATEDIFF("MONTH",bdate,cdate)-offset-(age*12))/100)
 quit $fnumber(age,,2)
}
go