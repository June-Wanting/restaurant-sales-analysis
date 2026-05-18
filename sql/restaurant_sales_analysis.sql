/*
SQLyog Community v13.3.0 (64 bit)
MySQL - 8.0.41 
*********************************************************************
*/
/*!40101 SET NAMES utf8 */;

create table `sales` (
	`order_id` varchar (150),
	`sales_date` date ,
	`product` varchar (300),
	`price` Decimal (12),
	`sales_value` Decimal (12),
	`purchase_type` varchar (150),
	`payment_method` varchar (150),
	`manager` varchar (300),
	`city` varchar (300)
); 
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10452','2022-11-07','Fries','3.49','573.07','Online','Gift Card','Tom Jackson','London');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10453','2022-11-07','Beverages','2.95','745.76','Online','Gift Card','Pablo Perez','Madrid');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10454','2022-11-07','Sides & Other','4.99','200.40','In-store','Gift Card','Joao Silva','Lisbon');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10455','2022-11-08','Burgers','12.99','569.67','In-store','Credit Card','Walter Muller','Berlin');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10456','2022-11-08','Chicken Sandwiches','9.95','201.01','In-store','Credit Card','Walter Muller','Berlin');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10457','2022-11-08','Fries','3.49','573.07','In-store','Credit Card','Remy Monet','Paris');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10459','2022-11-08','Sides & Other','4.99','200.40','In-store','Credit Card','Walter Muller','Berlin');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10460','2022-11-09','Burgers','12.99','554.27','In-store','Credit Card','Remy Monet','Paris');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10461','2022-11-09','Chicken Sandwiches','9.95','201.01','In-store','Credit Card','Remy Monet','Paris');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10462','2022-11-09','Fries','3.49','573.07','In-store','Credit Card','Remy Monet','Paris');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10463','2022-11-09','Beverages','2.95','677.97','In-store','Credit Card','Remy Monet','Paris');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10464','2022-11-09','Sides & Other','4.99','200.40','In-store','Credit Card','Remy Monet','Paris');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10465','2022-11-10','Burgers','12.99','554.27','In-store','Credit Card','Pablo Perez','Madrid');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10466','2022-11-10','Chicken Sandwiches','9.95','201.01','In-store','Credit Card','Pablo Perez','Madrid');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10467','2022-11-10','Fries','3.49','573.07','In-store','Credit Card','Pablo Perez','Madrid');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10468','2022-11-10','Beverages','2.95','677.97','In-store','Credit Card','Pablo Perez','Madrid');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10470','2022-11-11','Burgers','12.99','554.27','In-store','Credit Card','Pablo Perez','Madrid');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10471','2022-11-11','Chicken Sandwiches','9.95','201.01','In-store','Credit Card','Pablo Perez','Madrid');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10472','2022-11-11','Fries','3.49','630.37','In-store','Credit Card','Pablo Perez','Madrid');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10473','2022-11-11','Beverages','2.95','677.97','In-store','Credit Card','Pablo Perez','Madrid');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10474','2022-11-11','Sides & Other','4.99','200.40','In-store','Credit Card','Pablo Perez','Madrid');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10475','2022-11-12','Burgers','12.99','523.48','In-store','Credit Card','Pablo Perez','Madrid');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10476','2022-11-12','Chicken Sandwiches','9.95','201.01','In-store','Credit Card','Pablo Perez','Madrid');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10477','2022-11-12','Fries','3.49','630.37','In-store','Credit Card','Pablo Perez','Madrid');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10478','2022-11-12','Beverages','2.95','677.97','In-store','Credit Card','Pablo Perez','Madrid');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10479','2022-11-12','Sides & Other','4.99','200.40','In-store','Credit Card','Pablo Perez','Madrid');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10480','2022-11-13','Burgers','12.99','508.08','In-store','Credit Card','Pablo Perez','Madrid');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10481','2022-11-13','Chicken Sandwiches','9.95','201.01','In-store','Credit Card','Pablo Perez','Madrid');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10482','2022-11-13','Fries','25.50','630.37','In-store','Credit Card','Joao Silva','Lisbon');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10486','2022-11-14','Chicken Sandwiches','29.05','201.01','In-store','Credit Card','Joao Silva','Lisbon');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10487','2022-11-14','Fries','3.49','630.37','In-store','Credit Card','Joao Silva','Lisbon');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10488','2022-11-14','Beverages','2.95','677.97','In-store','Credit Card','Joao Silva','Lisbon');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10489','2022-11-14','Sides & Other','4.99','200.40','In-store','Credit Card','Pablo Perez','Madrid');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10490','2022-11-15','Burgers','12.99','508.08','In-store','Credit Card','Pablo Perez','Madrid');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10491','2022-11-15','Chicken Sandwiches','9.95','201.01','In-store','Credit Card','Pablo Perez','Madrid');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10492','2022-11-15','Fries','3.49','573.07','In-store','Credit Card','Pablo Perez','Madrid');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10493','2022-11-15','Beverages','2.95','677.97','In-store','Credit Card','Pablo Perez','Madrid');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10494','2022-11-15','Sides & Other','4.99','200.40','In-store','Credit Card','Pablo Perez','Madrid');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10495','2022-11-16','Burgers','12.99','508.08','In-store','Credit Card','Pablo Perez','Madrid');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10496','2022-11-16','Chicken Sandwiches','9.95','201.01','In-store','Credit Card','Pablo Perez','Madrid');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10497','2022-11-16','Fries','3.49','573.07','In-store','Credit Card','Pablo Perez','Madrid');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10498','2022-11-16','Beverages','2.95','677.97','Drive-thru','Credit Card','Pablo Perez','Madrid');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10499','2022-11-16','Sides & Other','4.99','200.40','Drive-thru','Credit Card','Pablo Perez','Madrid');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10500','2022-11-17','Burgers','12.99','523.48','Drive-thru','Credit Card','Pablo Perez','Madrid');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10501','2022-11-17','Chicken Sandwiches','9.95','201.01','Drive-thru','Credit Card','Pablo Perez','Madrid');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10502','2022-11-17','Fries','3.49','630.37','Drive-thru','Credit Card','Pablo Perez','Madrid');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10503','2022-11-17','Beverages','2.95','677.97','Drive-thru','Credit Card','Pablo Perez','Madrid');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10504','2022-11-17','Sides & Other','4.99','200.40','Drive-thru','Credit Card','Pablo Perez','Madrid');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10505','2022-11-18','Burgers','12.99','538.88','Drive-thru','Credit Card','Pablo Perez','Madrid');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10506','2022-11-18','Chicken Sandwiches','9.95','201.01','Drive-thru','Credit Card','Pablo Perez','Madrid');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10507','2022-11-18','Fries','3.49','687.68','Drive-thru','Credit Card','Pablo Perez','Madrid');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10508','2022-11-18','Beverages','2.95','677.97','Drive-thru','Credit Card','Pablo Perez','Madrid');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10509','2022-11-18','Sides & Other','4.99','200.40','Drive-thru','Credit Card','Pablo Perez','Madrid');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10510','2022-11-19','Burgers','12.99','508.08','Drive-thru','Credit Card','Pablo Perez','Madrid');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10511','2022-11-19','Chicken Sandwiches','9.95','201.01','Drive-thru','Credit Card','Joao Silva','Lisbon');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10512','2022-11-19','Fries','3.49','687.68','Drive-thru','Credit Card','Joao Silva','Lisbon');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10513','2022-11-19','Beverages','2.95','677.97','Drive-thru','Cash','Joao Silva','Lisbon');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10514','2022-11-19','Sides & Other','4.99','200.40','Drive-thru','Cash','Joao Silva','Lisbon');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10515','2022-11-20','Burgers','12.99','477.29','Drive-thru','Cash','Joao Silva','Lisbon');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10516','2022-11-20','Chicken Sandwiches','9.95','201.01','Drive-thru','Cash','Joao Silva','Lisbon');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10483','2022-11-13','Beverages','2.95','677.97','In-store','Credit Card','Joao Silva','Lisbon');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10484','2022-11-13','Sides & Other','4.99','200.40','In-store','Credit Card','Joao Silva','Lisbon');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10485','2022-11-14','Burgers','12.99','523.48','In-store','Credit Card','Joao Silva','Lisbon');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10520','2022-11-21','Burgers','12.99','492.69','Drive-thru','Cash','Remy Monet','Paris');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10521','2022-11-21','Chicken Sandwiches','9.95','201.01','Drive-thru','Cash','Remy Monet','Paris');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10522','2022-11-21','Fries','3.49','687.68','Drive-thru','Cash','Remy Monet','Paris');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10523','2022-11-21','Beverages','2.95','745.76','Drive-thru','Cash','Remy Monet','Paris');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10524','2022-11-21','Sides & Other','4.99','200.40','Drive-thru','Cash','Remy Monet','Paris');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10525','2022-11-22','Burgers','12.99','461.89','Drive-thru','Cash','Remy Monet','Paris');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10526','2022-11-22','Chicken Sandwiches','9.95','201.01','Drive-thru','Cash','Remy Monet','Paris');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10527','2022-11-22','Fries','3.49','687.68','Drive-thru','Cash','Remy Monet','Paris');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10528','2022-11-22','Beverages','2.95','745.76','Drive-thru','Cash','Remy Monet','Paris');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10529','2022-11-22','Sides & Other','4.99','200.40','Drive-thru','Cash','Remy Monet','Paris');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10530','2022-11-23','Burgers','12.99','477.29','Drive-thru','Cash','Remy Monet','Paris');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10531','2022-11-23','Chicken Sandwiches','9.95','201.01','Drive-thru','Cash','Remy Monet','Paris');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10532','2022-11-23','Fries','3.49','687.68','Drive-thru','Cash','Joao Silva','Lisbon');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10533','2022-11-23','Beverages','2.95','745.76','Drive-thru','Cash','Joao Silva','Lisbon');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10534','2022-11-23','Sides & Other','4.99','200.40','Drive-thru','Cash','Pablo Perez','Madrid');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10535','2022-11-24','Burgers','12.99','477.29','Drive-thru','Credit Card','Pablo Perez','Madrid');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10536','2022-11-24','Chicken Sandwiches','9.95','201.01','Drive-thru','Credit Card','Pablo Perez','Madrid');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10540','2022-11-25','Burgers','12.99','461.89','Drive-thru','Credit Card','Pablo Perez','Madrid');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10541','2022-11-25','Chicken Sandwiches','9.95','201.01','Drive-thru','Credit Card','Tom Jackson','London');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10542','2022-11-25','Fries','3.49','630.37','Drive-thru','Credit Card','Tom Jackson','London');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10543','2022-11-25','Beverages','2.95','745.76','Drive-thru','Credit Card','Tom Jackson','London');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10544','2022-11-25','Sides & Other','4.99','200.40','Drive-thru','Credit Card','Tom Jackson','London');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10545','2022-11-26','Burgers','12.99','446.50','Drive-thru','Credit Card','Tom Jackson','London');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10546','2022-11-26','Chicken Sandwiches','9.95','201.01','Drive-thru','Credit Card','Tom Jackson','London');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10547','2022-11-26','Fries','3.49','630.37','Drive-thru','Credit Card','Tom Jackson','London');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10548','2022-11-26','Beverages','2.95','745.76','Drive-thru','Credit Card','Tom Jackson','London');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10549','2022-11-26','Sides & Other','4.99','200.40','Drive-thru','Credit Card','Tom Jackson','London');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10550','2022-11-27','Burgers','12.99','461.89','Drive-thru','Credit Card','Tom Jackson','London');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10551','2022-11-27','Chicken Sandwiches','9.95','201.01','Drive-thru','Credit Card','Tom Jackson','London');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10552','2022-11-27','Fries','3.49','630.37','Online','Credit Card','Tom Jackson','London');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10553','2022-11-27','Beverages','2.95','745.76','Online','Credit Card','Tom Jackson','London');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10554','2022-11-27','Sides & Other','4.99','200.40','Online','Credit Card','Tom Jackson','London');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10555','2022-11-28','Burgers','12.99','477.29','Online','Credit Card','Tom Jackson','London');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10556','2022-11-28','Chicken Sandwiches','9.95','201.01','Online','Credit Card','Tom Jackson','London');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10557','2022-11-28','Fries','3.49','630.37','Online','Credit Card','Tom Jackson','London');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10558','2022-11-28','Beverages','2.95','677.97','Online','Credit Card','Tom Jackson','London');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10559','2022-11-28','Sides & Other','4.99','200.40','Online','Credit Card','Tom Jackson','London');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10560','2022-11-29','Burgers','12.99','477.29','Online','Credit Card','Tom Jackson','London');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10561','2022-11-29','Chicken Sandwiches','9.95','201.01','Online','Credit Card','Tom Jackson','London');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10562','2022-11-29','Fries','3.49','630.37','Online','Credit Card','Tom Jackson','London');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10563','2022-11-29','Beverages','2.95','677.97','Online','Credit Card','Tom Jackson','London');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10564','2022-11-29','Sides & Other','4.99','200.40','Online','Credit Card','Tom Jackson','London');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10565','2022-11-30','Burgers','12.99','492.69','Online','Credit Card','Tom Jackson','London');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10566','2022-11-30','Chicken Sandwiches','9.95','201.01','Online','Credit Card','Tom Jackson','London');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10567','2022-11-30','Fries','3.49','630.37','Online','Credit Card','Tom Jackson','London');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10568','2022-11-30','Beverages','2.95','677.97','Online','Credit Card','Tom Jackson','London');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10569','2022-11-30','Sides & Other','4.99','200.40','Online','Credit Card','Tom Jackson','London');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10570','2022-12-01','Burgers','12.99','492.69','Online','Credit Card','Tom Jackson','London');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10571','2022-12-01','Chicken Sandwiches','9.95','201.01','Online','Credit Card','Tom Jackson','London');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10572','2022-12-01','Fries','3.49','573.07','Online','Credit Card','Remy Monet','Paris');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10573','2022-12-01','Beverages','2.95','677.97','Online','Credit Card','Remy Monet','Paris');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10574','2022-12-01','Sides & Other','4.99','200.40','Online','Credit Card','Remy Monet','Paris');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10575','2022-12-02','Burgers','12.99','523.48','Online','Credit Card','Remy Monet','Paris');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10576','2022-12-02','Chicken Sandwiches','9.95','201.01','Online','Credit Card','Remy Monet','Paris');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10577','2022-12-02','Fries','3.49','630.37','Online','Credit Card','Remy Monet','Paris');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10578','2022-12-02','Beverages','2.95','677.97','Online','Credit Card','Remy Monet','Paris');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10579','2022-12-02','Sides & Other','4.99','200.40','Online','Credit Card','Remy Monet','Paris');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10580','2022-12-03','Burgers','12.99','523.48','Online','Credit Card','Remy Monet','Paris');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10581','2022-12-03','Chicken Sandwiches','9.95','201.01','Online','Credit Card','Remy Monet','Paris');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10582','2022-12-03','Fries','3.49','630.37','Online','Credit Card','Tom Jackson','London');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10583','2022-12-03','Beverages','2.95','677.97','Online','Credit Card','Tom Jackson','London');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10584','2022-12-03','Sides & Other','4.99','200.40','Online','Credit Card','Tom Jackson','London');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10585','2022-12-04','Burgers','12.99','538.88','Online','Credit Card','Tom Jackson','London');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10586','2022-12-04','Chicken Sandwiches','9.95','201.01','Online','Credit Card','Tom Jackson','London');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10537','2022-11-24','Fries','3.49','630.37','Drive-thru','Credit Card','Pablo Perez','Madrid');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10538','2022-11-24','Beverages','2.95','745.76','Drive-thru','Credit Card','Pablo Perez','Madrid');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10539','2022-11-24','Sides & Other','4.99','200.40','Drive-thru','Credit Card','Pablo Perez','Madrid');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10590','2022-12-05','Burgers','12.99','554.27','Online','Credit Card','Tom Jackson','London');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10591','2022-12-05','Chicken Sandwiches','9.95','201.01','Online','Credit Card','Tom Jackson','London');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10592','2022-12-05','Fries','3.49','573.07','Online','Credit Card','Tom Jackson','London');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10593','2022-12-05','Beverages','2.95','677.97','Online','Credit Card','Tom Jackson','London');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10594','2022-12-05','Sides & Other','4.99','200.40','Online','Credit Card','Tom Jackson','London');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10595','2022-12-06','Burgers','12.99','538.88','Online','Credit Card','Tom Jackson','London');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10596','2022-12-06','Chicken Sandwiches','9.95','201.01','Online','Credit Card','Tom Jackson','London');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10597','2022-12-06','Fries','3.49','573.07','Online','Credit Card','Tom Jackson','London');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10598','2022-12-06','Beverages','2.95','677.97','Online','Credit Card','Tom Jackson','London');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10599','2022-12-06','Sides & Other','4.99','200.40','Online','Credit Card','Tom Jackson','London');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10600','2022-12-07','Burgers','12.99','523.48','Online','Credit Card','Tom Jackson','London');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10601','2022-12-07','Chicken Sandwiches','9.95','201.01','Online','Credit Card','Tom Jackson','London');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10602','2022-12-07','Fries','3.49','630.37','Online','Cash','Tom Jackson','London');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10603','2022-12-07','Beverages','2.95','677.97','Online','Cash','Tom Jackson','London');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10604','2022-12-07','Sides & Other','4.99','200.40','Online','Cash','Tom Jackson','London');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10605','2022-12-08','Burgers','12.99','538.88','Online','Cash','Tom Jackson','London');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10606','2022-12-08','Chicken Sandwiches','9.95','201.01','Online','Cash','Tom Jackson','London');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10607','2022-12-08','Fries','3.49','630.37','Online','Cash','Tom Jackson','London');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10608','2022-12-08','Beverages','2.95','677.97','Online','Gift Card','Tom Jackson','London');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10609','2022-12-08','Sides & Other','4.99','200.40','Online','Gift Card','Tom Jackson','London');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10610','2022-12-09','Burgers','12.99','569.67','Online','Gift Card','Tom Jackson','London');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10611','2022-12-09','Chicken Sandwiches','9.95','201.01','Online','Gift Card','Tom Jackson','London');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10612','2022-12-09','Fries','3.49','630.37','Online','Gift Card','Tom Jackson','London');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10613','2022-12-09','Beverages','2.95','677.97','Online','Gift Card','Tom Jackson','London');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10614','2022-12-09','Sides & Other','4.99','200.40','Online','Gift Card','Tom Jackson','London');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10615','2022-12-10','Burgers','12.99','569.67','Online','Gift Card','Tom Jackson','London');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10616','2022-12-10','Chicken Sandwiches','9.95','201.01','Online','Gift Card','Tom Jackson','London');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10617','2022-12-10','Fries','3.49','630.37','Online','Gift Card','Tom Jackson','London');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10618','2022-12-10','Beverages','2.95','677.97','Online','Gift Card','Tom Jackson','London');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10619','2022-12-10','Sides & Other','4.99','200.40','Online','Gift Card','Tom Jackson','London');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10620','2022-12-11','Burgers','12.99','585.07','Online','Gift Card','Tom Jackson','London');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10621','2022-12-11','Chicken Sandwiches','9.95','201.01','Online','Gift Card','Tom Jackson','London');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10622','2022-12-11','Fries','3.49','630.37','Online','Gift Card','Tom Jackson','London');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10623','2022-12-11','Beverages','2.95','745.76','Online','Gift Card','Tom Jackson','London');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10624','2022-12-11','Sides & Other','4.99','200.40','Online','Gift Card','Tom Jackson','London');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10625','2022-12-12','Burgers','12.99','569.67','Online','Gift Card','Tom Jackson','London');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10626','2022-12-12','Chicken Sandwiches','9.95','201.01','Online','Gift Card','Tom Jackson','London');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10627','2022-12-12','Fries','3.49','630.37','Online','Gift Card','Tom Jackson','London');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10628','2022-12-12','Beverages','2.95','677.97','Online','Gift Card','Joao Silva','Lisbon');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10629','2022-12-12','Sides & Other','4.99','200.40','Online','Gift Card','Joao Silva','Lisbon');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10630','2022-12-13','Burgers','12.99','569.67','Online','Cash','Joao Silva','Lisbon');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10631','2022-12-13','Chicken Sandwiches','9.95','201.01','Online','Gift Card','Joao Silva','Lisbon');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10632','2022-12-13','Fries','3.49','630.37','Online','Gift Card','Joao Silva','Lisbon');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10633','2022-12-13','Beverages','2.95','677.97','Online','Gift Card','Joao Silva','Lisbon');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10634','2022-12-13','Sides & Other','4.99','200.40','Online','Gift Card','Joao Silva','Lisbon');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10635','2022-12-14','Burgers','12.99','554.27','Online','Gift Card','Joao Silva','Lisbon');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10636','2022-12-14','Chicken Sandwiches','9.95','221.11','Online','Gift Card','Joao Silva','Lisbon');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10637','2022-12-14','Fries','3.49','630.37','Online','Gift Card','Joao Silva','Lisbon');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10638','2022-12-14','Beverages','2.95','677.97','Online','Gift Card','Joao Silva','Lisbon');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10639','2022-12-14','Sides & Other','4.99','200.40','Online','Gift Card','Joao Silva','Lisbon');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10640','2022-12-15','Burgers','12.99','538.88','Online','Gift Card','Joao Silva','Lisbon');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10641','2022-12-15','Chicken Sandwiches','9.95','221.11','Online','Gift Card','Joao Silva','Lisbon');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10642','2022-12-15','Fries','3.49','630.37','Online','Cash','Joao Silva','Lisbon');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10643','2022-12-15','Beverages','2.95','677.97','Online','Cash','Joao Silva','Lisbon');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10644','2022-12-15','Sides & Other','4.99','200.40','Online','Cash','Joao Silva','Lisbon');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10645','2022-12-16','Burgers','12.99','569.67','Online','Cash','Joao Silva','Lisbon');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10646','2022-12-16','Chicken Sandwiches','9.95','221.11','Online','Cash','Joao Silva','Lisbon');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10647','2022-12-16','Fries','3.49','630.37','Online','Gift Card','Joao Silva','Lisbon');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10648','2022-12-16','Beverages','2.95','745.76','Online','Gift Card','Joao Silva','Lisbon');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10649','2022-12-16','Sides & Other','4.99','200.40','Online','Gift Card','Joao Silva','Lisbon');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10650','2022-12-17','Burgers','12.99','585.07','Online','Gift Card','Joao Silva','Lisbon');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10651','2022-12-17','Chicken Sandwiches','9.95','221.11','Online','Gift Card','Joao Silva','Lisbon');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10652','2022-12-17','Fries','3.49','687.68','Online','Gift Card','Joao Silva','Lisbon');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10653','2022-12-17','Beverages','2.95','745.76','Online','Gift Card','Joao Silva','Lisbon');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10654','2022-12-17','Sides & Other','4.99','200.40','Online','Gift Card','Joao Silva','Lisbon');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10655','2022-12-18','Burgers','12.99','600.46','Online','Gift Card','Joao Silva','Lisbon');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10656','2022-12-18','Chicken Sandwiches','9.95','221.11','Online','Gift Card','Joao Silva','Lisbon');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10657','2022-12-18','Fries','3.49','687.68','Online','Gift Card','Joao Silva','Lisbon');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10658','2022-12-18','Beverages','2.95','745.76','Online','Cash','Joao Silva','Lisbon');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10659','2022-12-18','Sides & Other','4.99','200.40','Online','Cash','Joao Silva','Lisbon');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10660','2022-12-19','Burgers','12.99','631.25','In-store','Cash','Joao Silva','Lisbon');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10661','2022-12-19','Chicken Sandwiches','9.95','221.11','In-store','Cash','Joao Silva','Lisbon');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10662','2022-12-19','Fries','3.49','630.37','In-store','Cash','Joao Silva','Lisbon');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10663','2022-12-19','Beverages','2.95','745.76','In-store','Cash','Joao Silva','Lisbon');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10664','2022-12-19','Sides & Other','4.99','200.40','In-store','Cash','Joao Silva','Lisbon');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10665','2022-12-20','Burgers','12.99','646.65','In-store','Cash','Joao Silva','Lisbon');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10666','2022-12-20','Chicken Sandwiches','9.95','221.11','In-store','Cash','Joao Silva','Lisbon');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10667','2022-12-20','Fries','3.49','630.37','In-store','Cash','Joao Silva','Lisbon');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10668','2022-12-20','Beverages','2.95','745.76','In-store','Cash','Joao Silva','Lisbon');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10669','2022-12-20','Sides & Other','4.99','200.40','In-store','Cash','Joao Silva','Lisbon');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10670','2022-12-21','Burgers','12.99','677.44','In-store','Cash','Joao Silva','Lisbon');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10671','2022-12-21','Chicken Sandwiches','9.95','221.11','In-store','Cash','Joao Silva','Lisbon');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10672','2022-12-21','Fries','3.49','630.37','In-store','Cash','Joao Silva','Lisbon');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10673','2022-12-21','Beverages','2.95','745.76','In-store','Cash','Joao Silva','Lisbon');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10674','2022-12-21','Sides & Other','4.99','200.40','In-store','Cash','Joao Silva','Lisbon');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10675','2022-12-22','Burgers','12.99','677.44','In-store','Cash','Joao Silva','Lisbon');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10676','2022-12-22','Chicken Sandwiches','9.95','241.21','In-store','Cash','Joao Silva','Lisbon');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10677','2022-12-22','Fries','3.49','630.37','In-store','Cash','Joao Silva','Lisbon');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10678','2022-12-22','Beverages','2.95','745.76','In-store','Cash','Joao Silva','Lisbon');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10679','2022-12-22','Sides & Other','4.99','200.40','In-store','Cash','Joao Silva','Lisbon');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10680','2022-12-23','Burgers','12.99','646.65','In-store','Cash','Joao Silva','Lisbon');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10681','2022-12-23','Chicken Sandwiches','9.95','241.21','In-store','Cash','Joao Silva','Lisbon');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10682','2022-12-23','Fries','3.49','630.37','In-store','Cash','Joao Silva','Lisbon');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10683','2022-12-23','Beverages','2.95','677.97','In-store','Cash','Joao Silva','Lisbon');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10684','2022-12-23','Sides & Other','4.99','200.40','In-store','Cash','Joao Silva','Lisbon');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10685','2022-12-24','Burgers','12.99','677.44','In-store','Cash','Joao Silva','Lisbon');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10686','2022-12-24','Chicken Sandwiches','9.95','241.21','In-store','Cash','Joao Silva','Lisbon');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10687','2022-12-24','Fries','3.49','630.37','In-store','Cash','Walter Muller','Berlin');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10688','2022-12-24','Beverages','2.95','677.97','In-store','Cash','Walter Muller','Berlin');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10689','2022-12-24','Sides & Other','4.99','200.40','In-store','Cash','Walter Muller','Berlin');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10690','2022-12-25','Burgers','12.99','677.44','In-store','Cash','Walter Muller','Berlin');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10691','2022-12-25','Chicken Sandwiches','9.95','261.31','In-store','Cash','Walter Muller','Berlin');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10692','2022-12-25','Fries','3.49','630.37','In-store','Cash','Walter Muller','Berlin');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10693','2022-12-25','Beverages','2.95','677.97','In-store','Cash','Walter Muller','Berlin');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10694','2022-12-25','Sides & Other','4.99','200.40','In-store','Cash','Walter Muller','Berlin');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10695','2022-12-26','Burgers','12.99','692.84','In-store','Cash','Walter Muller','Berlin');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10696','2022-12-26','Chicken Sandwiches','9.95','281.41','In-store','Cash','Walter Muller','Berlin');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10697','2022-12-26','Fries','3.49','630.37','In-store','Cash','Walter Muller','Berlin');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10698','2022-12-26','Beverages','2.95','677.97','In-store','Cash','Walter Muller','Berlin');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10699','2022-12-26','Sides & Other','4.99','200.40','In-store','Cash','Walter Muller','Berlin');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10700','2022-12-27','Burgers','12.99','692.84','In-store','Cash','Walter Muller','Berlin');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10701','2022-12-27','Chicken Sandwiches','9.95','281.41','In-store','Cash','Walter Muller','Berlin');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10702','2022-12-27','Fries','3.49','630.37','In-store','Cash','Walter Muller','Berlin');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10703','2022-12-27','Beverages','2.95','677.97','In-store','Gift Card','Walter Muller','Berlin');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10704','2022-12-27','Sides & Other','4.99','200.40','Drive-thru','Gift Card','Walter Muller','Berlin');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10705','2022-12-28','Burgers','12.99','723.63','Drive-thru','Gift Card','Walter Muller','Berlin');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10706','2022-12-28','Chicken Sandwiches','9.95','301.51','Drive-thru','Gift Card','Walter Muller','Berlin');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10707','2022-12-28','Fries','3.49','630.37','Drive-thru','Gift Card','Walter Muller','Berlin');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10708','2022-12-28','Beverages','2.95','677.97','Drive-thru','Gift Card','Walter Muller','Berlin');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10709','2022-12-28','Sides & Other','4.99','200.40','Drive-thru','Gift Card','Walter Muller','Berlin');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10710','2022-12-29','Burgers','12.99','754.43','Drive-thru','Gift Card','Walter Muller','Berlin');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10711','2022-12-29','Chicken Sandwiches','9.95','281.41','Drive-thru','Gift Card','Walter Muller','Berlin');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10712','2022-12-29','Fries','3.49','630.37','Drive-thru','Gift Card','Walter Muller','Berlin');
insert into `sales` (`order_id`, `sales_date`, `product`, `price`, `sales_value`, `purchase_type`, `payment_method`, `manager`, `city`) values('10713','2022-12-29','Beverages','2.95','677.97','Drive-thru','Gift Card','Walter Muller','Berlin');

-- =====================================================
-- Restaurant Sales Intelligence Analysis
-- Author: Wanting Huang
-- Description:
-- Business intelligence analysis for multi-city restaurant sales data
-- Data Source: SQLyog (MySQL 8.0)
-- =====================================================


-- =====================================================
-- 0. Database Selection
-- =====================================================

USE restaurant_sales_analysis;

-- =====================================================
-- 1. Data Cleaning
-- =====================================================

-- Business Question:
-- Are there missing values in key business fields?

SELECT *
FROM sales
WHERE product IS NULL
   OR city IS NULL
   OR payment_method IS NULL
   OR sales_value IS NULL;


-- Business Question:
-- Are there duplicate orders?

SELECT
    order_id,
    COUNT(*) AS duplicate_count
FROM sales
GROUP BY order_id
HAVING COUNT(*) > 1;


-- Clean manager names (remove extra spaces)

UPDATE sales
SET manager = REGEXP_REPLACE(manager, '\\s+', ' ');


-- =====================================================
-- 2. KPI Analysis
-- =====================================================

-- Business Question:
-- What is total revenue?

SELECT
    ROUND(SUM(sales_value), 2) AS total_revenue
FROM sales;


-- Business Question:
-- How many transactions are there?

SELECT
    COUNT(*) AS total_orders
FROM sales;


-- Business Question:
-- What is average order value?

SELECT
    ROUND(AVG(sales_value), 2) AS avg_order_value
FROM sales;


-- =====================================================
-- 3. Product Performance Analysis
-- =====================================================

-- Business Question:
-- Which products generate the highest revenue?

SELECT
    product,
    ROUND(SUM(sales_value), 2) AS total_revenue
FROM sales
GROUP BY product
ORDER BY total_revenue DESC;


-- Advanced Ranking Analysis:
-- Product revenue ranking

SELECT
    product,
    ROUND(SUM(sales_value), 2) AS total_revenue,
    RANK() OVER (
        ORDER BY SUM(sales_value) DESC
    ) AS revenue_rank
FROM sales
GROUP BY product;


-- =====================================================
-- 4. City Revenue Analysis
-- =====================================================

-- Business Question:
-- Which cities generate the most revenue?

SELECT
    city,
    ROUND(SUM(sales_value), 2) AS city_revenue
FROM sales
GROUP BY city
ORDER BY city_revenue DESC;


-- Business Question:
-- Top product per city

WITH city_product_sales AS (
    SELECT
        city,
        product,
        ROUND(SUM(sales_value), 2) AS revenue,
        RANK() OVER (
            PARTITION BY city
            ORDER BY SUM(sales_value) DESC
        ) AS revenue_rank
    FROM sales
    GROUP BY city, product
)

SELECT *
FROM city_product_sales
WHERE revenue_rank = 1;


-- =====================================================
-- 5. Payment Method Analysis
-- =====================================================

-- Business Question:
-- Which payment methods are most valuable?

SELECT
    payment_method,
    COUNT(*) AS total_transactions,
    ROUND(SUM(sales_value), 2) AS total_revenue,
    ROUND(AVG(sales_value), 2) AS avg_transaction_value
FROM sales
GROUP BY payment_method
ORDER BY total_revenue DESC;


-- =====================================================
-- 6. Manager Performance Analysis
-- =====================================================

-- Business Question:
-- Which managers generate the highest revenue?

SELECT
    manager,
    ROUND(SUM(sales_value), 2) AS total_revenue,
    COUNT(*) AS total_orders
FROM sales
GROUP BY manager
ORDER BY total_revenue DESC;


-- =====================================================
-- 7. Customer Segmentation
-- =====================================================

-- Business Question:
-- Can we segment transactions by value?

SELECT
    order_id,
    city,
    product,
    sales_value,

    CASE
        WHEN sales_value >= 5000 THEN 'High Value'
        WHEN sales_value >= 2000 THEN 'Medium Value'
        ELSE 'Low Value'
    END AS customer_segment
FROM sales;


-- =====================================================
-- 8. Advanced Trend Analysis
-- =====================================================

-- Business Question:
-- What is the revenue trend over time?

SELECT
    sales_date,

    ROUND(SUM(sales_value), 2) AS daily_revenue,

    ROUND(
        SUM(SUM(sales_value)) OVER (
            ORDER BY sales_date
            ROWS BETWEEN 6 PRECEDING AND CURRENT ROW
        ),
        2
    ) AS rolling_7_day_revenue

FROM sales
GROUP BY sales_date
ORDER BY sales_date;