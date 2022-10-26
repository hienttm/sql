create table Nhaxuatbans (
	Id int identity(1,1) primary key,
	Name nvarchar(100) not null unique,
	Address nvarchar(255) not null
);
create table Loaisachs(
	Id int identity(1,1) primary key,
	Name nvarchar(100) not null

);
create table Books(
	Id varchar(20) not null  primary key,
	Name nvarchar(100) not null,
	Tacgia nvarchar(50) not null,
	Noidungtomtat ntext,
	Namxuatban int not null,
	Lanxuatban int not null,
	Giaban decimal(12,0) not null check(Giaban>0),
	Soluong int not null,
	NhaxuatbanId int not null foreign key references Nhaxuatbans(Id),
	LoaisachId int not null foreign key references Loaisachs(Id)
);
--2. chèn dữ liệu vào bảng
insert into Nhaxuatbans(Name,Address)
values(N'Tri Thức',N'53 Nguyễn Du, Hai Bà Trưng, Hà Nội');

insert into Loaisachs(Name)
values(N'Khoa học xã hội');

insert into Books(Id,Name,Tacgia,Noidungtomtat,Namxuatban,Lanxuatban,Giaban,Soluong,NhaxuatbanId,LoaisachId)
values('B001',N'Trí Tuệ Do Thái',N'Eran Katz',N'Bạn có muốn biết: Người Do Thái sáng tạo cái gì và nguồn gốc trí tuệ của họ xuất phát từ đâu không? Cuốn sách này sẽ dần hé lộ những bí ấn về sự thông thái của người Do Thái, của một dân tộc thông tuwj với những phương pháp và kỹ thuật phát triển tầng lớp trí thức đã được giữ kín hàng nghìn năm như một bí ẩn mang tính văn hóa',
2010,1,79000,100,1,1);


--3. liệt kê các cuốn sách có năm xuất bản từ 2008
select *from Books where Namxuatban>2008;

--4.liệt kê 10 cuốn có giá bán cao nhất
select top 10 *from Books order by Giaban desc;

--5.tìm những cuốn sách có tiêu đề chứa từ Tin học
select *from Books where Name like N'%tin học%';

--6. liệt kê những cuốn có tên bắt đầu bằng chữ T theo thứ tự giá giảm dần
select *from Books where Name like N'T%' order by Giaban desc;

