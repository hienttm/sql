create table Suppliers(
Id varchar(10) primary key,
Name nvarchar(255) not null unique,
Address varchar(50) not null,
Tel varchar(15) not null unique check(Tel like '0%'),
TaxCode int not null unique
);
create table Services(
Id varchar(10) primary key,
Name nvarchar(255) not null
);
create table Prices(
Id varchar(10) primary key,
Price decimal(12,0) not null check(Price>0),
Description nvarchar(100)
);
create table Vehicles(
Name varchar(50) primary key,
Company varchar(50) not null,
Seats int not null
);
create table SupplyRegistrations(
Id varchar(10) primary key,
SupplierId varchar(10) not null foreign key references Suppliers(Id),
ServiceId varchar(10) not null foreign key references Services(Id),
VehicleName varchar(50) not null foreign key references Vehicles(Name),
PriceId varchar(10) not null foreign key references Prices(Id),
StarDay date not null,
EndDay date not null,
Qty int not null check(Qty >0)
);