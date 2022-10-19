create table Brands(
Id int primary key,
Name varchar(30) not null unique,
Address varchar(50) not null,
Tel varchar(15) not null unique
);

create table Products(
Id int primary key identity(1,1),
Name nvarchar(255) not null unique,
Description ntext,
Unit nvarchar (50) not null,
Price decimal(12,0) not null,
Qty int not null,
BrandId int not null foreign key references Brands(Id)
);


insert into Brands(Id,Name,Address,Tel)
values(123,'Asus','USA','983232');

select *from Brands;

insert into Products(Name,Description,Unit,Price,Qty,BrandId)
values(N'Máy tính T450',N'Máy nhập cũ',N'Chiếc',1000,10,123),
(N'Điện thoại Nokia4567',N'Điện thoại đang hot',N'Chiếc',200,200,123),
(N'Máy In Samsung 450',N'Máy in đang loại bình',N'Chiếc',100,10,123);

select *from Products;


--câu 4a. hiển thị tất cả các hãng sản xuất
select *from Brands;

--câu 4b. hiển thị tất cả các sản phẩm
select *from Products;

--câu 5a. liệt kê ds hãng theo thứ tự anphabet của tên
select *from Brands order by Name asc;

--câu 5b. liệt kê sp của cửa hàng theo thứ tự giá giảm dần
select *from Products order by Price desc;

--câu 5c. hiển thị thông tin của hãng asus
select *from Brands where Name like 'Asus';

--câu 5d. liệt kê danh sách sp còn ít hơn 11 chiếc trong kho
select *from Products where Qty < 11;

--câu 5e. liệt kê danh sách sp của hãng Asus:
--select *from Products where Id = 123
select *from Products where BrandId = 123;

--câu 6a. số hãng sp mà cửa hàng có
select count(Id) as soluongbrands from Brands;

--câu 6b. số lượng mặt hàng mà cửa hàng bán
select count(Id) as soluongmathang from Products;

--câu 6c. tổng số loại sp của mỗi hãng có trong cửa hàng
select BrandId,sum(Qty) as tongsoloaisp from Products group by BrandId;

--câu 6d. tổng số đầu sp của toàn cửa hàng;
select sum(Qty) as tongsodausp from Products;