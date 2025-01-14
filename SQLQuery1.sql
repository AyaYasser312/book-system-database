create database Diwanlib;
use Diwanlib;

-------------------to create the stuff table---------------------
create table STUFFS (
		id_stuf int  primary key,
		fname varchar (10) not null,
		lname varchar (10) not null,
		email varchar (40) not null, 
		hiredate DATE  not null,
		password_stuf varchar(80) not null,
		userName varchar (10) not null,
					);

					
------------------to apply the insert in the stuff------------------------------
		insert into STUFFS values(200111 ,'Aya','Yasser','aya@gmail.com','2025-11-28','0109016asdf12','aya23');
		insert into STUFFS values(200112 ,'Sara','Rabie','sara@gmail.com','2024-9-30','0190asdf@','saraR14');
		insert into STUFFS values(200113,'Malk','Hithem','malk@gmail.com','2021-6-20','malk01129238000am','malk67');
		insert into STUFFS values(200114,'Myar','Shaban','mayar@gmail.com','1998-7-8','mayar01065432','12mayar');
		insert into STUFFS values(200115,'Sara','Emad','sara@gmail.com','1997-12-4','raw2','34sara');
		insert into STUFFS values(200116 ,'Rawan','Hamada','rawan@gmail.com','2000-4-3','sara1','rawanH45');

		---------------to apply the select in the stuff--------------------------------------------------
--1)
	select id_stuf,fname +lname as 'authorNames',email,hiredate,userName,
					case 
						when len(password_stuf)<10 then 'weak-password'
						when len(password_stuf)>=10and len(password_stuf)<=15 then 'mid-password'
						when len(password_stuf)>15 then 'strong-password'
					end as 'paswword-level'
	from STUFFS;
--2)
	select*from STUFFS where fname LIKE '_a%';


	------------to create authors table----------------
create table AUTHORS(
		Author_id int  primary key,
		email  varchar(50) NOT NULL,
		name varchar(50) NOT NULL,
		username varchar(10) NOT NULL,
		authPassword varchar(50) NOT NULL,
					);

					------------------to apply the insert in the authors------------------------------
		insert into Authors values  (1,'han@gmail.com','Hanan Lashin','1hanan','Han1467@');
		insert into Authors values   (2,'os@gmail.com','Osama Al-Muslim','2osama','OM4466#'); 
		insert into Authors values   (3,'Malakah@gmail.com','Ahmed Khaled','3ahmed','AK58&899'); 
		insert into Authors values   (4,'AyaY@gmail.com','Khawla Hamdy','4khawla','Klll456');
		insert into Authors values   (5,'MayarAM@gmail.com','Amr Abdel Hamid','5amr','AMAuu4578');
		insert into Authors values   (6,'rwanSA@gmail.com','Sandra Siraj','6sandra','SSSdd659$$');
		insert into Authors values   (7,'SaraOl@gmail.com','Jamie Oliver','7jamie','OLI6767@');
		insert into Authors values   (8,'SaraJO@gmail.com','John Gray','8johan','JOO9987622');

------------------to apply the select in the uthors------------------------------
				select*from AUTHORS;


------------to create customer table----------------
create table CUSTOMERS(
		customer_id int  primary key,
		fname varchar(50) NOT NULL,
		lname varchar(50) NOT NULL,
		email  varchar(50) NOT NULL,
		address varchar(50) NOT NULL, 
		username varchar(15) NOT NULL,
		customerPassword varchar(50) NOT NULL,
						);

						------------------to apply the insert in the customers------------------------------
		insert into CUSTOMERS values (20,'Aya','magdy','aya@gmail.com','assuit-eelu-universty','20Aya','MMMaya@90');
		insert into CUSTOMERS values (30,'Abd-el-rahman','yunis','abd12@gmail.com','assuit-abnoub','30Abd-el-rahman','Abd@R12987');
		insert into CUSTOMERS values (40,'Samah','esam','esam22@gmail.com','assuit','40Samah','9877esam%');
		insert into CUSTOMERS values (50,'Mohmed','zedan','zadzod@gmail.com','cairo-eldoqy','50Mohmed','2567zedan$');
		insert into CUSTOMERS values (60,'Mohamed','hassan','moo@gmail.com','assuit','60Mohamed','hassan8440@');
		insert into CUSTOMERS values (70,'Eman','Rizk','ee7@gmail.com','assuit','70Eman','Rizk#909');

		
------------------to apply the select in the customers------------------------------
	select customer_id as 'ID',fname+lname as 'Reader-Name',email,address,username,customerPassword from CUSTOMERS;

	
------------to create publishers table----------------
create table PUBLISHERS (
	pub_id int ,
	name varchar(20) not null,
	address varchar(30) not null,
	Constraint pk2 primary key(pub_id), 
					);

					------------------to apply the insert in the publisher------------------------------
		insert into PUBLISHERS  values(80,'Hachette','france');
		insert into PUBLISHERS values(90,'Macmillan','NewYourk');
		insert into PUBLISHERS values(100,'easir alkutub','Egypt');
		insert into PUBLISHERS values(110,'alshuruq','Egypt');
		insert into PUBLISHERS values(120,'bin luqman','Egypt');
		insert into PUBLISHERS values(130,'altahrir','Egypt');

		------------------to apply the select in the publishing------------------------------
	select pub_id as 'ID',name as 'Publishing-House',address as 'Country' from PUBLISHERS;

	------------to create books table----------------
create table BOOKS(
	book_id int primary key,
	title varchar(50) not null,
	price money not null,--Monetary data from -922,337,203,685,477.5808 to 922,337,203,685,477.5807
	pub_date date not null,
	book_type varchar(50) not null,
	pub_id int,
	auth_id int,
	constraint fk1 foreign key (pub_id) references PUBLISHERS(pub_id),
	constraint fk2 foreign key (auth_id) references AUTHORS(Author_id),
				);

				------------------to apply the insert in the Book------------------------------
		insert into BOOKS values (50,'icadoli',35.5,'2018-3-2','fantsy',100,1);
		insert into BOOKS values (51,'basatin earbistan',80,'2010-5-20','imagination',120,2);
		insert into BOOKS values (52,'The legend of Egor',35,'2018-6-8','horror',110,3);
		insert into BOOKS values (53,'ghurbat alyasamin',45,'2019-8-9','imagination',120,4);
		insert into BOOKS values (54,'eawdat alyasamin',50,'2019-8-9','imagination',120,4);
		insert into BOOKS values (55,'ard zikula',25.5,'2017-3-2','fantsy',100,5);
		insert into BOOKS values (56,'In my heart is a Hebrew female',40,'2017-5-20','imagination',120,4);
		insert into BOOKS values (57,'ma rawah albahr',35,'2019-11-8','romantic',130,6);
		insert into BOOKS values (58,'15-Minute Meals',5,'2004-8-9','cooking',80,7);
		insert into BOOKS values (59,'Men are from Mars,women are from Venus',100,'2002-8-9','human developement',90,8);

		------------------to apply the select in the books------------------------------
	--1)	
		select book_id as 'ID',title as 'Books-Name'	
			,price,pub_date as 'Publishing-Date',book_type as 'Type'
			,pub_id as'Publishing-Houses-ID',
			auth_id as 'Authors-ID'from BOOKS;

	--2)
		--this will get Khawla Hamdy's books
	select*from BOOKS where auth_id=4 ;
		--this will get Khawla Hamdy's books and order it from the old to the new
	select*from BOOKS where auth_id=4 order by pub_date  ;

	------------to create book-stuff table for the relation between stuff and books----------------
create table Book_Stuff(
  bookId int ,
  stufId int,
  constraint fk3 foreign key (bookId) references BOOKS(book_id),
  constraint fk4 foreign key (stufId) references STUFFS(id_stuf)
 );

 ----------------to insert in books_stuff----------------
	insert into  Book_Stuff values (50,200111);
	insert into  Book_Stuff values (51,200112);
	insert into  Book_Stuff values (52,200113);
	insert into  Book_Stuff values (53,200111);
	insert into  Book_Stuff values (54,200112);
	insert into  Book_Stuff values (55,200113);
	insert into  Book_Stuff values (56,200111);
	insert into  Book_Stuff values (57,200112);
	insert into  Book_Stuff values (58,200113);
	insert into  Book_Stuff values (59,200111);

	------------------to apply the select in the book-stuff------------------------------
		select bookId as 'BOOK-ID',stufId as'manager-ID' from Book_Stuff order by stufId ;

		------------to create book-customer table for the relation between customers and boks----------------
 create table Book_customer
 (
  bookid int not null,
  custId int not null,
  constraint fk5 foreign key (bookid) references BOOKS(book_id),
  constraint fk6 foreign key (custId) references CUSTOMERS(customer_id),
 );

 ----------------to insert in books_customer----------------
	 insert into  Book_customer values (55,20);
	 insert into  Book_customer values (53,30);
	 insert into  Book_customer values (55,40);
	 insert into  Book_customer values (51,50);
	 insert into  Book_customer values (59,60);
	 insert into  Book_customer values (52,70);

	 ------------------to apply the select in the book_customer------------------------------
 select bookId as 'BOOK-ID',custId as 'USER-ID' from Book_customer order by bookid;
 

























