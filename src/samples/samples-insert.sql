INSERT INTO Samples.OrderEntry (OrderId,OrderDate,CustomerId,OrderTotal)
 VALUES  (1001,to_date('2020/04/01','YYYY/MM/DD'),2003,691200)
go 
INSERT INTO Samples.OrderEntry (OrderId,OrderDate,CustomerId,OrderTotal)
 VALUES  (1002,to_date('2020/04/02','YYYY/MM/DD'),2002,559440)
go
INSERT INTO Samples.OrderEntry (OrderId,OrderDate,CustomerId,OrderTotal)
 VALUES  (1003,To_date('2020/04/02','YYYY/MM/DD'),2004,648000)
go
INSERT INTO Samples.OrderEntry (OrderId,OrderDate,CustomerId,OrderTotal)
 VALUES  (1004,to_date('2020/04/03','YYYY/MM/DD'),2003,3240)
go
INSERT INTO Samples.OrderEntry (OrderId,OrderDate,CustomerId,OrderTotal)
 VALUES  (1005,to_date('2020/04/03','YYYY/MM/DD'),2005,10800)
go
INSERT INTO Samples.OrderEntry (OrderId,OrderDate,CustomerId)
 VALUES (1006,to_date('2020/04/05','YYYY/MM/DD'),2003)
go
INSERT INTO Samples.OrderEntry (OrderId,OrderDate,CustomerId)
 VALUES (1007,to_date('2020/04/06','YYYY/MM/DD'),2005)
go
INSERT INTO Samples.OrderEntry (OrderId,OrderDate,CustomerId)
 VALUES (1008,to_date('2020/04/07','YYYY/MM/DD'),2006)
go
INSERT INTO  Samples.OrderEntryItem (OrderId,ProductId,Amount)
 VALUES(1001,'LCDS032',2)
go
INSERT INTO  Samples.OrderEntryItem (OrderId,ProductId,Amount)
 VALUES(1001,'DVST500',3)
go
INSERT INTO  Samples.OrderEntryItem (OrderId,ProductId,Amount)
 VALUES(1002,'BLDT500',6)
go
INSERT INTO  Samples.OrderEntryItem (OrderId,ProductId,Amount)
 VALUES(1002,'TRRI300',10)
go
INSERT INTO  Samples.OrderEntryItem (OrderId,ProductId,Amount)
 VALUES(1003,'LCDP020',3)
go
INSERT INTO  Samples.OrderEntryItem (OrderId,ProductId,Amount)
 VALUES(1004,'LCDS032',1)
go
INSERT INTO  Samples.OrderEntryItem (OrderId,ProductId,Amount)
 VALUES(1005,'LCDT020',2)
go
INSERT INTO  Samples.OrderEntryItem (OrderId,ProductId,Amount)
 VALUES(1006,'DVIH500',3)
go
INSERT INTO  Samples.OrderEntryItem (OrderId,ProductId,Amount)
 VALUES(1007,'TRRI300',4)
go
INSERT INTO  Samples.OrderEntryItem (OrderId,ProductId,Amount)
 VALUES(1008,'LCDS032',5)
go
/* レコード追加　Product */
/* INSERT INTO  [テーブル名] (【項目名】,・・) VALUES (【値１】,・・・) */
INSERT INTO  Samples.Product (ProductId,MakerId,ProductName,ListPrice,BuyingPrice) 
 VALUES ('LCDS032',3001,'SONY テレビ（液晶３２型）赤',200000,100000)
go
INSERT INTO  Samples.Product (ProductId,MakerId,ProductName,ListPrice,BuyingPrice)
 VALUES ('LCDP032',3002,'松下 テレビ（液晶３２型）赤',220000,110000)
go
INSERT INTO  Samples.Product (ProductId,MakerId,ProductName,ListPrice,BuyingPrice)
 VALUES ('LCDS020',3001,'SONY テレビ（液晶２０型）黒',50000,25000)
go
INSERT INTO  Samples.Product (ProductId,MakerId,ProductName,ListPrice,BuyingPrice)
 VALUES ('LCDP020',3002,'松下 テレビ（液晶２０型）黒',60000,30000)
go
INSERT INTO  Samples.Product (ProductId,MakerId,ProductName,ListPrice,BuyingPrice)
 VALUES ('DVST500',3003,'東芝 DVD　500GB','70000',35000)
go
INSERT INTO  Samples.Product (ProductId,MakerId,ProductName,ListPrice,BuyingPrice)
 VALUES ('DVSH500',3004,'日立 DVD　500GB','60000',30000)
go
INSERT INTO  Samples.Product (ProductId,MakerId,ProductName,ListPrice,BuyingPrice)
 VALUES ('BLDT500',3003,'東芝 ブルーレイ　500GB',90000,45000)
go
INSERT INTO  Samples.Product (ProductId,MakerId,ProductName,ListPrice,BuyingPrice)
 VALUES ('BLDH500',3004,'松下 ブルーレイ　500GB',80000,40000)
go
INSERT INTO  Samples.Product (ProductId,MakerId,ProductName,ListPrice,BuyingPrice)
 VALUES ('TRRI300',3005,'アイワ ラジオ',3000,1500)
go
INSERT INTO Samples.Customer (CustomerId,CustomerName,ZipCode,Address1,Telno)
 VALUES(2001,'三田　さやか','125-0031','東京都練馬区富士見台X-X-X','03-36XX-XXXX')
go
INSERT INTO Samples.Customer (CustomerId,CustomerName,ZipCode,Address1,Telno)
 VALUES(2002,'竹原　夕実','177-0034','神奈川県横浜市港北区下田町X-X-X','03-38XX-XXXX')
go
INSERT INTO Samples.Customer (CustomerId,CustomerName,ZipCode,Address1,Telno)
 VALUES(2003,'林　香奈子','223-0064','東京都世田谷区代田X-X-X','045-56X-XXXX')
go
INSERT INTO Samples.Customer (CustomerId,CustomerName,ZipCode,Address1,Telno)
 VALUES(2004,'町井　秀人','155-0033','東京都練馬区氷川台X-X-X','03-54XX-XXXX')
go
INSERT INTO Samples.Customer (CustomerId,CustomerName,ZipCode,Address1,Telno)
 VALUES(2005,'三井　雅人','179-0084','神奈川県相模原市南区大野台X-X-X','03-66XX-XXXX')
go
INSERT INTO Samples.Customer (CustomerId,CustomerName,ZipCode,Address1,Telno)
 VALUES(2006,'牧野　勝','252-0331','神奈川県横浜市戸塚区吉田町X-X-X','042-32X-XXXX')
go
INSERT INTO Samples.Customer (CustomerId,CustomerName,ZipCode,Address1,Telno)
 VALUES(2007,'須田　翼','244-0817','東京都大田区石川町X-X-X','045-82X-XXXX')
go
INSERT INTO Samples.Customer (CustomerId,CustomerName,ZipCode,Address1,Telno)
 VALUES(2008,'駒井　よし子','145-0061','神奈川県横浜市神奈川区新子安X-X-X','03-98XX-XXXX')
go
INSERT INTO Samples.Maker (MakerId,MakerName,ZipCode,Address1,Telno) 
 VALUES (3001,'SONY','108-0075','東京都港区港南1-7-1','03-6748-2111')
go
INSERT INTO Samples.Maker (MakerId,MakerName,ZipCode,Address1,Telno)
 VALUES (3002,'パナソニック株式会社','571-8501','大阪府門真市大字門真1006番地','06-6908-1121')
go
INSERT INTO Samples.Maker (MakerId,MakerName,ZipCode,Address1,Telno) 
 VALUES (3003,'株式会社 東芝','105-8001','東京都港区芝浦1-1-1','03-3457-4511')
go
INSERT INTO Samples.Maker (MakerId,MakerName,ZipCode,Address1,Telno) 
 VALUES (3004,'株式会社 日立製作所','100-8280','東京都千代田区丸の内一丁目6番6号','03-3258-1111')
go
INSERT INTO Samples.Maker (MakerId,MakerName,ZipCode,Address1,Telno) 
 VALUES (3005,'アイワ株式会社','141-0022','東京都品川区東五反田1-6-3','0570-062-312')
go
INSERT INTO Samples.Inventory (ProductId,InventoryCount) 
 VALUES('LCDS032',3)
go
INSERT INTO Samples.Inventory (ProductId,InventoryCount) 
 VALUES('LCDP032',1)
go
INSERT INTO Samples.Inventory (ProductId,InventoryCount)
 VALUES('LCDS020',4)
go
INSERT INTO Samples.Inventory (ProductId,InventoryCount)
 VALUES('LCDP020',2)
go
INSERT INTO Samples.Inventory (ProductId,InventoryCount)
 VALUES('DVST500',3)
go
INSERT INTO Samples.Inventory (ProductId,InventoryCount) 
 VALUES('DVSH500',1)
go
INSERT INTO Samples.Inventory (ProductId,InventoryCount)
 VALUES('BLDT500',1)
go
INSERT INTO Samples.Inventory (ProductId,InventoryCount)
 VALUES('BLDH500',1)
go
INSERT INTO Samples.Inventory (ProductId,InventoryCount)
 VALUES('TRRI300',5)
go
INSERT INTO Samples.OrderPlacementItem (OrderId,OrderDate,ProductId,Amount) 
 VALUES(3001,to_date('2019/8/1','YYYY/MM/DD'),'LCDS032',2)
go
INSERT INTO Samples.OrderPlacementItem (OrderId,OrderDate,ProductId,Amount) 
 VALUES(3002,to_date('2019/8/1','YYYY/MM/DD'),'DVSH500',3)
go
INSERT INTO Samples.OrderPlacementItem (OrderId,OrderDate,ProductId,Amount) 
 VALUES(3003,to_date('2019/8/1','YYYY/MM/DD'),'BLDT500',6)
go
INSERT INTO Samples.OrderPlacementItem (OrderId,OrderDate,ProductId,Amount) 
 VALUES(3004,to_date('2019/8/1','YYYY/MM/DD'),'TRRI300',10)
go
INSERT INTO Samples.OrderPlacementItem (OrderId,OrderDate,ProductId,Amount) 
 VALUES(3005,to_date('2019/9/1','YYYY/MM/DD'),'LCDS020',3)
go
INSERT INTO Samples.OrderPlacementItem (OrderId,OrderDate,ProductId,Amount) 
 VALUES(3006,to_date('2019/9/1','YYYY/MM/DD'),'LCDP032',1)
go
INSERT INTO Samples.OrderPlacementItem (OrderId,OrderDate,ProductId,Amount) 
 VALUES(3007,to_date('2019/9/1','YYYY/MM/DD'),'LCDP032',2)
go
INSERT INTO Samples.OrderPlacementItem (OrderId,OrderDate,ProductId,Amount) 
 VALUES(3008,to_date('2019/9/1','YYYY/MM/DD'),'DVSH500',3)
go
INSERT INTO Samples.OrderPlacementItem (OrderId,OrderDate,ProductId,Amount) 
 VALUES(3009,to_date('2019/9/1','YYYY/MM/DD'),'BLDT500',6)
go
INSERT INTO Samples.OrderPlacementItem (OrderId,OrderDate,ProductId,Amount) 
 VALUES(3010,to_date('2019/9/1','YYYY/MM/DD'),'TRRI300',10)
go
INSERT INTO Samples.OrderPlacementItem (OrderId,OrderDate,ProductId,Amount) 
 VALUES(3011,to_date('2019/9/1','YYYY/MM/DD'),'LCDS020',3)
go
INSERT INTO Samples.OrderPlacementItem (OrderId,OrderDate,ProductId,Amount) 
 VALUES(3012,to_date('2019/9/1','YYYY/MM/DD'),'LCDP020',1)
go
INSERT INTO  Samples.Product_Tokyo (ProductId,MakerId,ProductName,ListPrice,BuyingPrice) 
 VALUES ('LCDS032',3001,'SONY テレビ（液晶３２型）赤',200000,100000)
go
INSERT INTO  Samples.Product_Tokyo (ProductId,MakerId,ProductName,ListPrice,BuyingPrice) 
 VALUES ('LCDP032',3002,'松下 テレビ（液晶３２型）赤',220000,110000)
go
INSERT INTO  Samples.Product_Tokyo (ProductId,MakerId,ProductName,ListPrice,BuyingPrice) 
 VALUES ('LCDS020',3001,'SONY テレビ（液晶２０型）黒',50000,25000)
go
INSERT INTO  Samples.Product_Tokyo (ProductId,MakerId,ProductName,ListPrice,BuyingPrice) 
 VALUES ('LCDP020',3002,'松下 テレビ（液晶２０型）黒',60000,30000)
go
INSERT INTO  Samples.Product_Tokyo (ProductId,MakerId,ProductName,ListPrice,BuyingPrice) 
 VALUES ('DVST500',3003,'東芝 DVD　500GB','70000',35000)
go
INSERT INTO  Samples.Product_Tokyo (ProductId,MakerId,ProductName,ListPrice,BuyingPrice) 
 VALUES ('DVSH500',3004,'日立 DVD　500GB','60000',30000)
go
INSERT INTO  Samples.Product_Tokyo (ProductId,MakerId,ProductName,ListPrice,BuyingPrice) 
 VALUES ('BLDT500',3003,'東芝 ブルーレイ　500GB',90000,45000)
go
INSERT INTO  Samples.Product_Tokyo (ProductId,MakerId,ProductName,ListPrice,BuyingPrice) 
 VALUES ('BLDH500',3004,'松下 ブルーレイ　500GB',80000,40000)
go
INSERT INTO  Samples.Product_Tokyo (ProductId,MakerId,ProductName,ListPrice,BuyingPrice) 
 VALUES ('TRRI300',3005,'アイワ ラジオ',3000,1500)
go
INSERT INTO  Samples.Product_Kanagawa (ProductId,MakerId,ProductName,ListPrice,BuyingPrice)
 VALUES ('LCDS032',3001,'SONY テレビ（液晶３２型）赤',200000,100000)
go
INSERT INTO  Samples.Product_Kanagawa (ProductId,MakerId,ProductName,ListPrice,BuyingPrice)
 VALUES ('LCDT020',3001,'東芝　テレビ（液晶２０型）黒',40000,35000)
go
INSERT INTO  Samples.Product_Kanagawa (ProductId,MakerId,ProductName,ListPrice,BuyingPrice)
 VALUES ('LCDP020',3002,'松下　テレビ（液晶２０型）黒',60000,30000)
go
INSERT INTO  Samples.Product_Kanagawa (ProductId,MakerId,ProductName,ListPrice,BuyingPrice)
 VALUES ('DVSH500',3004,'日立　DVD　500GB',60000,30000)
go
INSERT INTO  Samples.Product_Kanagawa (ProductId,MakerId,ProductName,ListPrice,BuyingPrice)
 VALUES ('DVIH500',3004,'アイワ　DVD　500GB',60000,30000)
go 
INSERT INTO  Samples.Product_Kanagawa (ProductId,MakerId,ProductName,ListPrice,BuyingPrice)
 VALUES ('BLDT500',3003,'東芝　ブルーレイ　500GB',90000,45000)
go
INSERT INTO  Samples.Product_Kanagawa (ProductId,MakerId,ProductName,ListPrice,BuyingPrice)
 VALUES ('BLDP500',3004,'松下　ブルーレイ　500GB',80000,40000)
go
INSERT INTO  Samples.Product_Kanagawa (ProductId,MakerId,ProductName,ListPrice,BuyingPrice)
 VALUES ('TRRI300',3005,'アイワ　ラジオ',3000,1500)
go
INSERT INTO Samples.Customer_Tokyo (CustomerId,CustomerName,ZipCode,Address1,Telno)
 VALUES(2001,'三田　さやか','125-0031','東京都練馬区富士見台X-X-X','03-36XX-XXXX')
go
INSERT INTO Samples.Customer_Tokyo (CustomerId,CustomerName,ZipCode,Address1,Telno)
 VALUES(2002,'竹原　夕実','177-0034','神奈川県横浜市港北区下田町X-X-X','03-38XX-XXXX')
go
INSERT INTO Samples.Customer_Tokyo (CustomerId,CustomerName,ZipCode,Address1,Telno)
 VALUES(2003,'林　香奈子','223-0064','東京都世田谷区代田X-X-X','045-56X-XXXX')
go
INSERT INTO Samples.Customer_Tokyo (CustomerId,CustomerName,ZipCode,Address1,Telno)
 VALUES(2004,'町井　秀人','155-0033','東京都練馬区氷川台X-X-X','03-54XX-XXXX')
go
INSERT INTO Samples.Customer_Tokyo (CustomerId,CustomerName,ZipCode,Address1,Telno)
 VALUES(2005,'三井　雅人','179-0084','神奈川県相模原市南区大野台X-X-X','03-66XX-XXXX')
go
INSERT INTO Samples.Customer_Tokyo (CustomerId,CustomerName,ZipCode,Address1,Telno)
 VALUES(2006,'牧野　勝','252-0331','神奈川県横浜市戸塚区吉田町X-X-X','042-32X-XXXX')
go
INSERT INTO Samples.Customer_Tokyo (CustomerId,CustomerName,ZipCode,Address1,Telno)
 VALUES(2007,'須田　翼','244-0817','東京都大田区石川町X-X-X','045-82X-XXXX')
go
INSERT INTO Samples.Customer_Tokyo (CustomerId,CustomerName,ZipCode,Address1,Telno)
 VALUES(2008,'駒井　よし子','145-0061','神奈川県横浜市神奈川区新子安X-X-X','03-98XX-XXXX')
go
INSERT INTO Samples.Customer_Kanagawa (CustomerId,CustomerName,ZipCode,Address1,Telno)
 VALUES(2001,'三田　さやか','125-0031','Tokyo都練馬区富士見台X-X-X','03-36XX-XXXX')
go
INSERT INTO Samples.Customer_Kanagawa (CustomerId,CustomerName,ZipCode,Address1,Telno)
 VALUES(2002,'竹原　夕実','177-0034','神奈川県横浜市港北区下田町X-X-X','03-38XX-XXXX')
go
INSERT INTO Samples.Customer_Kanagawa (CustomerId,CustomerName,ZipCode,Address1,Telno)
 VALUES(2007,'須田　翼','244-0817','東京都大田区石川町X-X-X','045-82X-XXXX')
go
INSERT INTO Samples.Customer_Kanagawa (CustomerId,CustomerName,ZipCode,Address1,Telno)
 VALUES(2008,'駒井　よし子','145-0061','神奈川県横浜市神奈川区新子安X-X-X','03-98XX-XXXX')
go
INSERT INTO Samples.Customer_Kanagawa (CustomerId,CustomerName,ZipCode,Address1,Telno)
 VALUES(2101,'前田　直行','241-0024','神奈川県横浜市旭区本村町X-X-X','045-36X-XXXX')
go
INSERT INTO Samples.Customer_Kanagawa (CustomerId,CustomerName,ZipCode,Address1,Telno)
 VALUES(2102,'青葉　晃','235-0016','神奈川県横浜市磯子区磯子X-X-X','045-75X-XXXX')
go
INSERT INTO Samples.Customer_Kanagawa (CustomerId,CustomerName,ZipCode,Address1,Telno)
 VALUES(2103,'須田　翼','244-0817','神奈川県横浜市戸塚区吉田町X-X-X','045-82X-XXXX')
go
INSERT INTO Samples.Customer_Kanagawa (CustomerId,CustomerName,ZipCode,Address1,Telno)
 VALUES(2104,'林　香奈子','223-0064','神奈川県横浜市港北区下田町X-X-X','045-56X-XXXX')
go
INSERT INTO Samples.Customer_Kanagawa (CustomerId,CustomerName,ZipCode,Address1,Telno)
 VALUES(2105,'長谷部　亮','221-0013','神奈川県横浜市神奈川区新子安X-X-X','045-43X-XXXX')
go
INSERT INTO Samples.Customer_Kanagawa (CustomerId,CustomerName,ZipCode,Address1,Telno)
 VALUES(2106,'中川　修子','231-0834','神奈川県横浜市中区池袋X-X-X','045-62X-XXXX')
go
INSERT INTO Samples.Customer_Kanagawa (CustomerId,CustomerName,ZipCode,Address1,Telno)
 VALUES(2107,'下山　美樹','226-0027','神奈川県横浜市緑区長津田X-X-X','045-98X-XXXX')
 go