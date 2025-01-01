CREATE FUNCTION DBA.f_age(
@bymd date,
@rymd date )
returns decimal(5,2)
as
begin
declare @age decimal(5,2)
declare @offset integer
declare @ymd date
declare @dt varchar
--////////////////////////////////////////////////////////////////////
--
-- 年齢の計算
--
--////////////////////////////////////////////////////////////////////
--set @dt = str(year(@rymd),4)+'-'+str(month(@bymd),2)+'-'+str(day(@bymd),2)
--set @dt = replace(@dt,' ','0')
--set @ymd = convert(DATETIME,@dt)
--if @rymd<@ymd then set @offset=1
if ((month(@rymd)*100)+day(@rymd))<((month(@bymd)*100)+day(@rymd)) then set @offset=1
else set @offset=0
set @age = datediff(YEAR,@bymd,@rymd) - @offset
--////////////////////////////////////////////////////////////////////
--
-- 月齢の計算
--
--////////////////////////////////////////////////////////////////////
if day(@rymd) < day(@bymd) set @offset = 1
else set @offset = 0
set @age = @age+((datediff(MONTH,@bymd,@rymd)-@offset-(@age*12))/100)
return @age
end