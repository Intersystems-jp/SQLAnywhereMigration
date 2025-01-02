# IRISのSQLサンプル

## サンプルスクリプト

IRISのサンプルでクラス定義を中心としたものは多数存在するが、SQL中心のサンプルがほとんどないので、ここで準備している

- samples-table.sql

  テーブル定義を読み込むスクリプト

- samples-insert.sql

  データを生成するスクリプト

- samples-drop.sql

  テーブル定義を削除するスクリプト

- samples-dataload.sql

  データをcsvからロードするスクリプト


## 定義の取り込み方法

 ```
// 作業用ネームスペースTESTの場合
// ファイルのエンコーディング UTF8
USER>set $namespace = "TEST"
TEST>do $SYSTEM.SQL.Schema.ImportDDL($lb("c:\work\samples-table.sql","UTF8"),,"IRIS")
TEST>do $SYSTEM.SQL.Schema.ImportDDL($lb("c:\work\samples-insert.sql","UTF8"),,"IRIS")
 ```

## データをcsvからロードする方法に関する事前設定

### JREのインストール

このコマンドを実行するためにはJava環境が必要

### Java Gatewayの設定

管理ポータル>システム>管理>外部言語サーバー

％Java Serverをクリックして、クラスパスにJREのパスを設定

例:  C:\"Program Files"\Microsoft\jdk-21.0.5.11-hotspot\bin

この設定後、IRISの再起動が必要

### データロードのスクリプト実行

 ```
// 作業用ネームスペースTESTの場合
// ファイルのエンコーディング UTF8
USER>set $namespace = "TEST"
TEST>do $SYSTEM.SQL.Schema.ImportDDL($lb("c:\work\samples-dataload.sql","UTF8"),,"IRIS")
 ```


