CREATE FUNCTION DBA.f_age(
@bymd date,
@rymd date )
returns decimal(5,2)
as
begin
declare @age decimal(5,2)
declare @offset integer
--////////////////////////////////////////////////////////////////////
--
-- 年齢の計算
--
--////////////////////////////////////////////////////////////////////
if ((month(@rymd)*100)+day(@rymd))<((month(@bymd)*100)+day(@bymd)) then set @offset=1
else set @offset=0
set @age = datediff(YEAR,@bymd,@rymd) - @offset
--////////////////////////////////////////////////////////////////////
--
-- 月齢の計算
--
--////////////////////////////////////////////////////////////////////
if day(@rymd) < day(@bymd) set @offset = 1
else set @offset = 0
set @age = @age+((datediff(MONTH,@bymd,@rymd)-@offset-(@age*12)/100))
return @age
end
