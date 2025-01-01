/*DROP TABLE user_master */
/*テーブル作成　user_master; */
CREATE TABLE Samples.user_master (
 user_id CHAR(255) not null primary key, 
 user_name VARCHAR(100),
 user_pass VARCHAR(100),
 user_mail VARCHAR(100),
 user_rights INT
)
go
/* DROP TABLE OrderEntry; */
/*テーブル作成　OrderEntry(受注マスタ) */
CREATE TABLE Samples.OrderEntry (
 OrderId INT not null primary key,
 OrderDate DATE not null,
 CustomerId INT,
 OrderTotal INT
)
go
/*DROP TABLE OrderEntryItem;*/
/*テーブル作成　OrderEntryItem(受注明細)*/
CREATE TABLE Samples.OrderEntryItem (
 OrderId INT,
 ProductId VARCHAR(100),
 Amount INT
)
go
/*DROP TABLE Product */
/*テーブル作成　Product(商品マスタ); */
CREATE TABLE Samples.Product(
 ProductId CHAR(255) not null primary key,
 MakerId INT,
 ProductName VARCHAR(100),
 ListPrice INT,
 BuyingPrice INT
)
go
/* DROP TABLE Customer; */
/* テーブル作成　Customer(顧客マスタ) */
CREATE TABLE Samples.Customer (
 CustomerId INT not null primary key,
 CustomerName VARCHAR(100),
 ZipCode VARCHAR(100),
 Address1 VARCHAR(100),
 Address2 VARCHAR(100),
 Address3 VARCHAR(100),
 Telno VARCHAR(100)
)
go
/* DROP TABLE Inventory; */
/* テーブル作成　在庫マスタ; */
CREATE TABLE Samples.Inventory (
 ProductId VARCHAR(255) not null primary key,
 InventoryCount INT
)
go
/* DROP TABLE OrderPlacement; */
/* テーブル作成　OrderPlacement(発注マスタ) */
CREATE TABLE Samples.OrderPlacement (
 OrderId INT not null primary key,
 OrderDate DATE not null,
 CustomerId INT
)
go
/* DROP TABLE OrderPlacementItem; */
/* テーブル作成　OrderPlacementItem(発注明細); */
CREATE TABLE Samples.OrderPlacementItem (
 OrderId INT not null primary key,
 OrderDate DATE not null,
 ProductId VARCHAR(100),
 Amount INT
)
go
/*DROP TABLE Maker; */
/*テーブル作成　Maker(メーカマスタ) */
CREATE TABLE Samples.Maker (
 MakerId INT not null primary key,
 MakerName VARCHAR(100),
 ZipCode VARCHAR(100),
 Address1 VARCHAR(100),
 Address2 VARCHAR(100),
 Address3 VARCHAR(100),
 Telno VARCHAR(100)
)
go
/*DROP TABLE Product_Tokyo; */
/*テーブル作成　Product_Tokyo(商品マスター_東京); */
CREATE TABLE Samples.Product_Tokyo (
 ProductId VARCHAR(255) not null primary key,
 MakerId INT,
 ProductName VARCHAR(100),
 ListPrice INT,
 BuyingPrice INT
)
go
/*DROP TABLE Product_Kanagawa; */
/*テーブル作成　Product_Kanagawa(商品マスタ_神奈川); */
CREATE TABLE Samples.Product_Kanagawa (
 ProductId VARCHAR(255) not null primary key,
 MakerId INT,
 ProductName VARCHAR(100),
 ListPrice INT,
 BuyingPrice INT
)
go
/* DROP TABLE Customer_Tokyo; */
/* テーブル作成　Customer_Tokyo(顧客マスタ_東京) */
CREATE TABLE Samples.Customer_Tokyo (
 CustomerId INT not null primary key,
 CustomerName VARCHAR(100),
 ZipCode VARCHAR(100),
 Address1 VARCHAR(100),
 Address2 VARCHAR(100),
 Address3 VARCHAR(100),
 Telno VARCHAR(100)
)
go
/* テーブル作成　Customer_Kanagawa */
CREATE TABLE Samples.Customer_Kanagawa (
 CustomerId INT not null primary key,
 CustomerName VARCHAR(100),
 ZipCode VARCHAR(100),
 Address1 VARCHAR(100),
 Address2 VARCHAR(100),
 Address3 VARCHAR(100),
 Telno VARCHAR(100)
)
go