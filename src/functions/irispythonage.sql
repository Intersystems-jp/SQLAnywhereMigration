CREATE FUNCTION dba.f_pythonage(birthdate TIMESTAMP, currentdate TIMESTAMP)
	RETURNS FLOAT
	LANGUAGE PYTHON
{

	import iris

	from datetime import datetime

	from dateutil import parser

	from dateutil.relativedelta import relativedelta

	cdate = iris.cls('%Library.Date').LogicalToDisplay(currentdate)
	bdate = iris.cls('%Library.Date').LogicalToDisplay(birthdate)
	cdate = parser.parse(cdate)
	bdate = parser.parse(bdate)

	age = (int(cdate.strftime("%Y%m%d")) - int(bdate.strftime("%Y%m%d"))) // 10000

	delta = relativedelta(cdate, bdate)

	age = age+(delta.months/100)

	return "{:.2f}".format(age)

}
go