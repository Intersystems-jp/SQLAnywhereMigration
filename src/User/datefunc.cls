Class User.datefunc Extends %Library.RegisteredObject [ DdlAllowed, Not ProcedureBlock ]
{

ClassMethod ymd(year As %Integer, month As %Integer, date As %Integer) As %Library.Date [ Language = objectscript, SqlName = ymd, SqlProc ]
{
	set tmpdate = year_"-01"_"-01"

	if (month > 0) {
	  set month = month - 1	
	}

	if (date > 0 ) {
      set date = date - 1
	}

	&sql(select dateadd('month',:month,:tmpdate) into :tmpdate2)
	&sql(select dateadd('day',:date,:tmpdate2) into :tmpdate3)
	quit $zdateh(tmpdate3,8)
}

ClassMethod years(tm1 As %TimeStamp, tm2 As %TimeStamp) As %Library.String [ Language = objectscript, SqlName = years, SqlProc ]
{
	if ($get(tm2) = "") {
	// 年数を返す
      &sql(select datepart('year',:tm1) into :tmpdate)	
	}
	else {
	  if (tm2?.N) {
		// 年数を追加
	    &sql(select dateadd('year',:tm2,:tm1) into :tmpdate)
	  }
	  else {
		// 年差を返す
		&sql(select datediff('year',:tm1,:tm2) into :tmpdate)
	  }	
	}
	quit tmpdate
}

ClassMethod months(tm1 As %TimeStamp, tm2 As %TimeStamp) As %Library.String [ Language = objectscript, SqlName = months, SqlProc ]
{
	if ($get(tm2) = "") {
	// 月数を返す
      &sql(select datediff('month','0001-02-28',:tm1) into :tmpdate)
	  set tmpdate = tmpdate + 12	
	}
	else {
	  if (tm2?.N) {
		// 月数を追加
	    &sql(select dateadd('month',:tm2,:tm1) into :tmpdate)
	  }
	  else {
		// 月差を返す
		&sql(select datediff('month',:tm1,:tm2) into :tmpdate)
	  }	
	}
	quit tmpdate
}

}
