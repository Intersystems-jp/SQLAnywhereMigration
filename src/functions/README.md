# Functionの移行

- age-org.sql

  SQL Anywhereで動作していたオリジナル

- age.sql

  IRISで動作するように修正したバージョン

- irisage.sql

  ObjectScriptで書き換えたバージョン

- pythonage.sql

  Embedded Pythonで書き換えたバージョン

## 定義の取り込み方法

 ```
// 作業用ネームスペースTESTの場合
// ファイルのエンコーディング UTF8
USER>set $namespace = "TEST"
TEST>do $SYSTEM.SQL.Schema.ImportDDL($lb("c:\work\age.sql","UTF8"),,"Sybase")
TEST>do $SYSTEM.SQL.Schema.ImportDDL($lb("c:\work\irisage.sql","UTF8"),,"IRIS")
TEST>do $SYSTEM.SQL.Schema.ImportDDL($lb("c:\work\pythonage.sql","UTF8"),,"IRIS")
 ```
