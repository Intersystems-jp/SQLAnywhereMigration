delete from samples.customer
go
LOAD DATA FROM FILE 'C://work/samples-customer.csv'
INTO samples.customer
USING {"from":{"file":{"header":true}}}
go
delete from samples.customer_kanagawa
go
LOAD DATA FROM FILE 'C://work/samples-customer-kanagawa.csv'
INTO samples.customer_kanagawa
USING {"from":{"file":{"header":true}}}
go
delete from samples.customer_tokyo
go
LOAD DATA FROM FILE 'C://work/samples-customer-tokyo.csv'
INTO samples.customer_tokyo
USING {"from":{"file":{"header":true}}}
go
delete from samples.inventory
go
LOAD DATA FROM FILE 'C://work/samples-inventory.csv'
INTO samples.inventory
USING {"from":{"file":{"header":true}}}
go
delete from samples.maker
go
LOAD DATA FROM FILE 'C://work/samples-maker.csv'
INTO samples.maker
USING {"from":{"file":{"header":true}}}
go
delete from samples.orderentry
go
LOAD DATA FROM FILE 'C://work/samples-orderentry.csv'
INTO samples.orderentry
USING {"from":{"file":{"header":true}}}
go
delete from samples.orderentryitem
go
LOAD DATA FROM FILE 'C://work/samples-orderentryitem.csv'
INTO samples.orderentryitem
USING {"from":{"file":{"header":true}}}
go
delete from samples.orderplacementitem
go
LOAD DATA FROM FILE 'C://work/samples-orderplacementitem.csv'
INTO samples.orderplacementitem
USING {"from":{"file":{"header":true}}}
go
delete from samples.product
go
LOAD DATA FROM FILE 'C://work/samples-product.csv'
INTO samples.product
USING {"from":{"file":{"header":true}}}
go
delete from samples.product_kanagawa
go
LOAD DATA FROM FILE 'C://work/samples-product-kanagawa.csv'
INTO samples.product_kanagawa
USING {"from":{"file":{"header":true}}}
go
delete from samples.product_tokyo
go
LOAD DATA FROM FILE 'C://work/samples-product-tokyo.csv'
INTO samples.product_tokyo
USING {"from":{"file":{"header":true}}}
go