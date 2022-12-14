create table Customers (
	Id int primary key identity(1,1),
	Name nvarchar(50) not null,
	Address nvarchar(255) not null,
	Birthday date not null
);

 create table Contacts(
	Id int primary key identity(1,1),
	Tel varchar(15) not null,
	CustomerId int not null foreign key references Customers(Id)
 );

insert into Customers(Name, Address,Birthday)
values(N'Nguyễn Văn An',N'111 Nguyễn Trãi, Thanh Xuân, Hà Nội','1987-11-18');


insert into Contacts(Tel,CustomerId)
values('987654321',1),('09873452',1),('09832323',1),('09434343',1);


--4a. liệt kê danh sách những người trong danh bạ
select *from Customers;

--4b. liệt kê danh sách sđt có trong danh bạ
select *from Contacts;

--5a. liệt kê danh sách người trong danh bạ theo thứ tự alphabet
select *from Customers order by Name asc;

--5b Liệt kê các sđt của người có tên là Nguyễn Văn An

select *from Contacts where CustomerId in 
	(select Id from Customers where Name in (N'Nguyễn Văn An'));

--5c. liệt kê những người có ngày sinh là 12/12/09
select *from Customers where Birthday in ('2009-12-12');

--6a. tìm số lượng sđt của mỗi người trong danh bạ

select CustomerId, COUNT(Id) as soluongsdt from Contacts group by CustomerId;

--6b. tổng số người trong danh bạc sinh vào tháng 12
select count(Id) as tongsonguoit12 from Customers where month(Birthday)=12;

