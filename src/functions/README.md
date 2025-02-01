# Functionの移行

- age-org.sql

  SQL Anywhereで動作していたオリジナル

- age.sql

  IRISで動作するように修正したバージョン

  過去日付はサポートしていない（間違った結果を返す）

  これは元々のバージョンの仕様制限

- irisage.sql

  ObjectScriptで書き換えたバージョン

  過去日付はサポートしていない（間違った結果を返す）

- irispythonage.sql

  Embedded Pythonで書き換えたバージョン

  過去日付はサポートしていない（間違った結果を返す）

## 定義の取り込み方法

 ```
// 作業用ネームスペースTESTの場合
// ファイルのエンコーディング UTF8
USER>set $namespace = "TEST"
TEST>do $SYSTEM.SQL.Schema.ImportDDL($lb("c:\work\age.sql","UTF8"),,"Sybase")
TEST>do $SYSTEM.SQL.Schema.ImportDDL($lb("c:\work\irisage.sql","UTF8"),,"IRIS")
TEST>do $SYSTEM.SQL.Schema.ImportDDL($lb("c:\work\irispythonage.sql","UTF8"),,"IRIS")
 ```

## Embedded Pythonの設定

irispythonage.sqlを動作させるためには、Pythonのインストールと事前設定が必要

設定例:

管理ポータル>システム>構成>メモリー詳細設定

```
PythonPath    c:\intersystems\iris\bin
PythonRuntimeLibrary  C:\Users\xxxxx\AppData\Local\Programs\Python\Python312\python3.dll
PythonRuntimeLibraryVersion  3.12
```

### python-dateutilのインストール

irispythonage.sqlを動作させるためには、python-dateutilのインストールが必要

```
python3 -m pip install --target c:\intersystems\iris\mgr\python python-dateutil
```
