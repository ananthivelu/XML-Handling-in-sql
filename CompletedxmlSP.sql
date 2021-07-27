--use ananthi
CREATE OR alter PROCEDURE InsertdataFromrepeatXML
       -- Add the parameters for the stored procedure here
       @xmlData XML 
AS
--Declaration of variables
declare @customerID int,@iterator int=1,@xmlcount int,@phno nvarchar(18);

 

--Getting the count of xml node use ananthi
select @xmlcount=count('/customers/customer') FROM @xmlData.nodes('/customers/customer') XmlData(x)
--Looping through each element
while (@iterator <= @xmlcount) -- Using iterator to pick only one element at a time
begin
        SELECT @customerID = NULL, @phno = NULL
        SELECT @phno = (select
        x.value('phonenumber[1]', 'varchar(50)') AS phonenumber        
        FROM @xmlData.nodes('/customers/customer[sql:variable("@iterator")]') XmlData(x))
        SELECT @customerID = Id From customer1 where phonenumber = @phno
        if (@customerID is not null)--=select phonenumber from customer1)
        Begin
       --Insert to Product Table with Customer ID from previous insert
        INSERT INTO product1
       (customerid,object,quantity,rate,pricevalue,purchasedate)
--delete from customer where id=@customerId
       SELECT
        @customerID,
        x.value('object[1]', 'varchar(50)') AS object,
        x.value('quantity[1]', 'int') AS quantity,
        x.value('rate[1]', 'int') AS rate,
        x.value('pricevalue[1]','int') AS pricevalue,
        x.value('purchasedate[1]','datetime') AS purchasedate
        FROM @xmlData.nodes('/customers/customer[sql:variable("@iterator")]/products/product') XmlData(x)

 

        set @iterator=@iterator+1;
        end

 

        else 
        BEGIN
        INSERT INTO customer1 
       (firstName, lastName,phonenumber, address,city)

 

        SELECT
        x.value('firstName[1]', 'varchar(50)') AS firstName,
        x.value('lastName[1]', 'varchar(50)') AS lastName,
        x.value('phonenumber[1]','nvarchar(18)') AS phonenumber,
        x.value('address[1]', 'varchar(50)') AS address,
        x.value('city[1]', 'varchar(50)') AS city

 

        FROM @xmlData.nodes('/customers/customer[sql:variable("@iterator")]') XmlData(x)
    
        select @customerID= @@IDENTITY       
       --Insert to Product Table with Customer ID from previous insert
        INSERT INTO product1
       (customerid,object,quantity,rate,pricevalue,purchasedate)

 

       SELECT
        @customerID,
        x.value('object[1]', 'varchar(50)') AS object,
        x.value('quantity[1]', 'int') AS quantity,
        x.value('rate[1]', 'int') AS rate,
        x.value('pricevalue[1]','int') AS pricevalue,
        x.value('purchasedate[1]','datetime') AS purchasedate
        FROM @xmlData.nodes('/customers/customer[sql:variable("@iterator")]/products/product') XmlData(x)
        
        set @iterator=@iterator+1;
END
        end