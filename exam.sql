create database SellingPoint;

create table Categories(
	CateID char(6) primary key,
	CateName nvarchar(100) not null unique,
	Description nvarchar(200)
);
create table Parts(
	PartID int primary key identity(1,1),
	PartName nvarchar(100) not null,
	CateID char(6) not null foreign key references Categories(CateID),
	Description nvarchar(1000),
	Price decimal(12,0) not null default 0,
	Quantity int  default 0,
	Warranty int  default 1,
	Photo nvarchar(200) check(Photo like 'photo/%') default 'photo/nophoto.png'
);

insert into Categories (CateID, CateName,Description)
values ('AD0001',N'RAM',N''),
('AH0001',N'CPU',N''),
('AK9998',N'HDD',N'');
insert into Parts(PartName,CateID,Description,Price,Quantity,Warranty,Photo)
values(N'HDD 128GB','AK9998',N'HDD 128GB new',80,10,3,N'photo/123.png'),
(N'HDD 256GB','AK9998',N'HDD 256GB new',120,10,3,N'photo/456.png'),
(N'HDD 512GB','AK9998',N'HDD 512GB new',150,10,3,N'photo/789.png');

--4.
select *from  Parts where Price >100;

--5.
select *from Parts where CateID in (select CateID from Categories where  CateName like N'CPU');
--6.
create view v_Parts as 
select a.PartID, a.PartName, b.CateID,a.Price,a.Quantity from Parts a 
left join Categories b on a.CateID=b.CateID;

select * from v_Parts;

--7. 
create view v_TopParts as
select top 5 PartName from Parts order by Price desc;

select * from v_TopParts;
