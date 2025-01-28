# 日付関連関数のエミュレーション

ymd,years,months関数をIRISで実装したサンプル

## 定義の取り込み方法

 ```
// 作業用ネームスペースTESTの場合
// ファイルのエンコーディング UTF8
USER>set $namespace = "TEST"
TEST>d $system.OBJ.Load("c:¥temp¥datefunc.cls","ck")
 ```

## 実行例

 ```
// 作業用ネームスペースTESTの場合
// ファイルのエンコーディング UTF8
USER>set $namespace = "TEST"
TEST>:sql
SQL Command Line Shell
----------------------------------------------------

The command prefix is currently set to: <<nothing>>.
Enter <command>, 'q' to quit, '?' for help.
[SQL]TEST>>SELECT MONTHS( '1998-12-13 06:07:12')
[SQL]TEST>>SELECT YEARS( '1998-12-13 06:07:12' )
[SQL]TEST>>SELECT YMD( 1999, -1, -1 )
 ```


