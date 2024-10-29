CREATE database Sales;
USE Sales;
CREATE TABLE Orders(
Order_Id int primary key,
Customer_name varchar(50) not null,
Product_Category varchar(50),
Ordered_item varchar(50) not null unique,
Contact_No varchar(15)unique
);

ALTER TABLE Orders ADD  Order_quantity INT;
ALTER TABLE Orders RENAME TO Sales_orders;
 
 INSERT INTO Sales_orders(Order_id,Customer_name,Product_category,Ordered_item,Contact_no,Order_quantity)
 VALUES
 (1,'Chris_Green','Electronics','Smartphone','1234567890',2),
 (2,'John_Doe','Clothing','T-Shirt','9864723561',5),
 (3,'Jane_Smith','Home Appliances','Blender','8326758490',1),
 (4,'Michael_Brown','Electronics','Laptop','9087654321',1),
 (5,'Arav_Jin','Books','Novel','8967409712',6),
 (6,'Sherlock_Tom','Clothing','Jeans','7890456314',4),
 (7,'Sarah_Thomas','Electronics','Head Phones','9067853641',3),
 (8,'Laura_Miller','Groceries','Cereal','9996785670',7),
 (9,'Tom_Cruise','Furniture','Chair','8889076585',2),
 (10,'Jis_Cooper','Groceries','Pasta','7778905631',3);
 
 SELECT Customer_name,Ordered_item FROM Sales_orders;
 
 UPDATE Sales_orders SET Ordered_item='Saree' WHERE Ordered_item='Jeans';
 SELECT*FROM Sales_orders;
 
 DROP TABLE Sales_orders;


 

