Class User.datefunc Extends %Library.RegisteredObject [ DdlAllowed, Not ProcedureBlock ]
{

ClassMethod ymd(year As %Integer, month As %Integer, day As %Integer) As %Library.Date [ Language = objectscript, SqlName = ymd, SqlProc ]
{
	// パラメータは全て数値化しておく
	set year = +year
	set month = +month
	set day = +day
	set tmpdate = year_"-01"_"-01"

	if (month > 0) {
	  set month = month - 1	
	}

	if (day > 0 ) {
      set day = day - 1
	}

	&sql(select dateadd('month',:month,:tmpdate) into :tmpdate2)
	&sql(select dateadd('day',:day,:tmpdate2) into :tmpdate3)
	quit $zdateh(tmpdate3,8)
}

ClassMethod years(tm1 As %TimeStamp, tm2 As %TimeStamp) As %Library.String [ Language = objectscript, SqlName = years, SqlProc ]
{
	try {

	  set date = $piece(tm1," ",1)
	  // フォーマットチェック
	  set h = $zdateh(date,3)

	  if ($get(tm2) = "") {
	  // 年数を返す
        &sql(select datepart('year',:tm1) into :tmpdate)	
	  }
	  elseif (tm2?.N) {
		  // 年数を追加
	      &sql(select dateadd('year',:tm2,:tm1) into :tmpdate)
	  }
	  else {
	    set date = $piece(tm2," ",1)
	    // フォーマットチェック
	    set h = $zdateh(date,3)
		// 年差を返す
		&sql(select datediff('year',:tm1,:tm2) into :tmpdate)
	  }	
	}
	catch {
	  set tmpdate = "timestamp format error"
	}
	quit tmpdate
}

ClassMethod months(tm1 As %TimeStamp, tm2 As %TimeStamp) As %Library.String [ Language = objectscript, SqlName = months, SqlProc ]
{
	try {

	  set date = $piece(tm1," ",1)
	  // フォーマットチェック
	  set h = $zdateh(date,3)

	  if ($get(tm2) = "") {
	  // 月数を返す
        &sql(select datediff('month','0001-02-28',:tm1) into :tmpdate)
	    // IRISは0000年を受け付けないので、0001を起点とし、最後に12(月)を足す
	    set tmpdate = tmpdate + 12	
	  }
	  elseif (tm2?.N) {
		// 月数を追加
	    &sql(select dateadd('month',:tm2,:tm1) into :tmpdate)
	  }
	  else {
	    set date = $piece(tm2," ",1)
	    // フォーマットチェック
	    set h = $zdateh(date,3)
	    // 月差を返す
		&sql(select datediff('month',:tm1,:tm2) into :tmpdate)
	  }	
	}
	catch {
	  set tmpdate = "timestamp format error"
	}
	quit tmpdate
}

}
