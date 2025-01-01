# IRISのSQLサンプル

IRISのサンプルでクラス定義を中心としたものは多数存在するが、SQL中心のサンプルがほとんどないので、ここで準備している

- samples-table.sql

  テーブル定義を読み込むスクリプト

- samples-insert.sql

  データを生成するスクリプト

- samples-drop.sql

  テーブル定義を削除するスクリプト


## 定義の取り込み方法

 ```
// 作業用ネームスペースTESTの場合
// ファイルのエンコーディング UTF8
USER>set $namespace = "TEST"
TEST>do $SYSTEM.SQL.Schema.ImportDDL($lb("c:\work\samples-table.sql","UTF8"),,"IRIS")
TEST>do $SYSTEM.SQL.Schema.ImportDDL($lb("c:\work\samples-insert.sql","UTF8"),,"IRIS")
 ```

