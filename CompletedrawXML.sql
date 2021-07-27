
--- xml code---
DECLARE @xmlData Xml 
SET @xmlData = '
<customers>
<customer>
<firstName>Ananthi</firstName>
<lastName>Velumani</lastName>
<phonenumber>9876543210</phonenumber>
<address>1/172,sathy</address>
<city>Erode</city>

<products>
<product>
<object>Pencil</object>
<quantity>2</quantity>
<rate>1</rate>
<pricevalue>2</pricevalue>
<purchasedate>2021-06-20</purchasedate>
</product>

<product>
<object>Rubber</object>
<quantity>1</quantity>
<rate>1</rate>
<pricevalue>1</pricevalue>
<purchasedate>2021-06-20</purchasedate>
</product>
</products>
</customer>

<customer>
<firstName>Madhana</firstName>
<lastName>Ilango</lastName>
<phonenumber>9886543211</phonenumber>
<address>7,CKT nagar</address>
<city>Dharmapuri</city>

<products>
<product>
<object>Pencil Box</object>
<quantity>1</quantity>
<rate>20</rate>
<pricevalue>20</pricevalue>
<purchasedate>2021-06-20</purchasedate>
</product>

<product>
<object>Pencil</object>
<quantity>10</quantity>
<rate>2</rate>
<pricevalue>20</pricevalue>
<purchasedate>2021-06-20</purchasedate>
</product>

<product>
<object>Divider</object>
<quantity>1</quantity>
<rate>15</rate>
<pricevalue>15</pricevalue>
<purchasedate>2021-06-20</purchasedate>
</product>
</products>
</customer>

<customer>
<firstName>Arvind</firstName>
<lastName>Chandrasekaran</lastName>
<phonenumber>7339212912</phonenumber>
<address>17,sathy</address>
<city>Erode</city>

<products>
<product>
<object>pen</object>
<quantity>1</quantity>
<rate>25</rate>
<pricevalue>25</pricevalue>
<purchasedate>2021-06-21</purchasedate>
</product>

<product>
<object>pencil box</object>
<quantity>1</quantity>
<rate>10</rate>
<pricevalue>10</pricevalue>
<purchasedate>2021-06-21</purchasedate>
</product>
</products>
</customer>

<customer>
<firstName>Sree</firstName>
<lastName>Parvathi</lastName>
<phonenumber>9176443230</phonenumber>
<address>15,Anna nagar</address>
<city>Salem</city>

<products>
<product>
<object>pen box</object>
<quantity>1</quantity>
<rate>30</rate>
<pricevalue>30</pricevalue>
<purchasedate>2021-06-22</purchasedate>
</product>

<product>
<object>pen </object>
<quantity>1</quantity>
<rate>10</rate>
<pricevalue>10</pricevalue>
<purchasedate>2021-06-22</purchasedate>
</product>
</products>
</customer>

<customer>
<firstName>Sai</firstName>
<lastName>Ram</lastName>
<phonenumber>9585636174</phonenumber>
<address>32,sathy</address>
<city>Erode</city>

<products>
<product>
<object>book </object>
<quantity>1</quantity>
<rate>100</rate>
<pricevalue>100</pricevalue>
<purchasedate>2021-06-23</purchasedate>
</product>

<product>
<object>notebook </object>
<quantity>1</quantity>
<rate>70</rate>
<pricevalue>70</pricevalue>
<purchasedate>2021-06-23</purchasedate>
</product>
</products>
</customer>

<customer>
<firstName>Keerthi</firstName>
<lastName>Sri</lastName>
<phonenumber>8876543456</phonenumber>
<address>12,Gopi</address>
<city>Namakkal</city>

<products>
<product>
<object>Pencil</object>
<quantity>2</quantity>
<rate>1</rate>
<pricevalue>2</pricevalue>
<purchasedate>2021-06-24</purchasedate>
</product>

<product>
<object>Rubber</object>
<quantity>5</quantity>
<rate>5</rate>
<pricevalue>5</pricevalue>
<purchasedate>2021-06-24</purchasedate>
</product>
</products>
</customer>

<customer>
<firstName>Chandra</firstName>
<lastName>Lekha</lastName>
<phonenumber>9876654210</phonenumber>
<address>11,Sairam street</address>
<city>Erode</city>

<products>
<product>
<object>Book</object>
<quantity>2</quantity>
<rate>200</rate>
<pricevalue>200</pricevalue>
<purchasedate>2021-06-25</purchasedate>
</product>

<product>
<object>Rubber</object>
<quantity>5</quantity>
<rate>5</rate>
<pricevalue>5</pricevalue>
<purchasedate>2021-06-25</purchasedate>
</product>
</products>
</customer>

<customer>
<firstName>Ravi</firstName>
<lastName>Prasath</lastName>
<phonenumber>6376543215</phonenumber>
<address>17,Anna nagar</address>
<city>Salem</city>

<products>
<product>
<object>Book</object>
<quantity>4</quantity>
<rate>300</rate>
<pricevalue>300</pricevalue>
<purchasedate>2021-06-25</purchasedate>
</product>

<product>
<object>Rubber Box</object>
<quantity>5</quantity>r
<rate>50</rate>
<pricevalue>50</pricevalue>
<purchasedate>2021-06-25</purchasedate>
</product>
</products>
</customer>

<customer>
<firstName>Ananthi</firstName>
<lastName>Velumani</lastName>
<phonenumber>9876543210</phonenumber>
<address>1/172,sathy</address>
<city>Erode</city>

<products>
<product>
<object>Pencil</object>
<quantity>2</quantity>
<rate>1</rate>
<pricevalue>2</pricevalue>
<purchasedate>2021-06-26</purchasedate>
</product>
</products>
</customer>

<customer>
<firstName>Sai</firstName>
<lastName>Ram</lastName>
<phonenumber>9585636174</phonenumber>
<address>32,sathy</address>
<city>Erode</city>

<products>
<product>
<object>book </object>
<quantity>1</quantity>
<rate>100</rate>
<pricevalue>100</pricevalue>
<purchasedate>2021-06-30</purchasedate>
</product>

<product>
<object>notebook </object>
<quantity>1</quantity>
<rate>70</rate>
<pricevalue>70</pricevalue>
<purchasedate>2021-06-30</purchasedate>
</product>
</products>
</customer>

<customer>
<firstName>Ananthi</firstName>
<lastName>Velumani</lastName>
<phonenumber>9876543210</phonenumber>
<address>1/172,sathy</address>
<city>Erode</city>

<products>
<product>
<object>Pencil</object>
<quantity>2</quantity>
<rate>1</rate>
<pricevalue>2</pricevalue>
<purchasedate>2021-07-10</purchasedate>
</product>
</products>
</customer>

</customers>   
'
EXEC InsertdataFromrepeatXML @xmlData

---
select * from customer1
select * from product1

