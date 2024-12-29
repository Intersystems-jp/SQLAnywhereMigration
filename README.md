# SQLAnywhereMigration

SQL AnywhereからIRISに移行する際の注意点や変更の必要な項目

# Function移行

## 区切り識別子のサポート

Function名をダブルクオートで囲みたい場合、管理ポータルで設定が必要

 システム > 構成 > TSQL設定  - (構成設定) の所で

 QUOTED_IDENTIFIERをONに設定し、保存

 ## Function定義の取り込み

 ```
USER>set $namespace = "TEST"
TEST>do $SYSTEM.SQL.DDLImport("sybase",,"c:\work\sage.sql")
 ```

## 関数のサポート

SQL Anywhereのすべての関数をサポートしているわけではないので、サポートしていない関数は他の手段で書き換える必要あり

IRISがサポートしているTSQL関数は以下の通り

https://docs.intersystems.com/iris20241/csp/docbookj/DocBook.UI.Page.cls?KEY=GTSQ_functions

### ymd関数

この関数はサポートしていない

convert関数で代替可能

ただし、事前の準備が必要

strで文字列変換し、月や日が一桁の場合にそのスペースをゼロにするなど

### monthsとyears関数

これらの関数もサポートしていない

datediff関数で代替可能

## IF文

式の中でIF文を記述できるようであるが、IRISはそのシンタックスをサポートしていない（シンタックスエラーとなる）

従って移行の際は、そのIF文の部分を外出しして、IF文の結果を変数に設定するように変更必要

## 計算の優先順位

IRISには計算の優先順位はなく、左から順番に実行されていく。

優先順位をつけるためには、括弧で明示的に囲む必要がある
