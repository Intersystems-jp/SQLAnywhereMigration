CREATE FUNCTION "DBA"."f_age"(
@bymd date,
@rymd date )
returns decimal(5,2)
as
begin
declare @age decimal(6,2)
--////////////////////////////////////////////////////////////////////
--
-- 年齢の計算
--
--////////////////////////////////////////////////////////////////////
set @age = years(@bymd,@rymd)
-if @rymd < ymd(year(@rymd),month(@bymd),day(@bymd)) then 1
else 0
endif
--////////////////////////////////////////////////////////////////////
--
-- 月齢の計算
--
--////////////////////////////////////////////////////////////////////
set @age = @age+((months(@bymd,@rymd)
-if day(@rymd) < day(@bymd) then 1
else 0
endif
-@age*12)
/100)

return(@age)
end
