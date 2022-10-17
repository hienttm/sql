insert into Suppliers(Id,Name,Address, Tel,TaxCode)
values('NCC001',N'Cty TNHH Toàn Pháp','Hai Chau','0392259890',123456),
('NCC002',N'Cty Cổ phần Đông Du','Lien Chieu','0392259891',123459),
('NCC003',N'Ông Nguyễn Văn A','Hoa Thuan','0892259892',123453),
('NCC004',N'Cty CP Toàn Cầu Xanh','Hai Chau','0992259891',128459),
('NCC005',N'Cty TNHH AMA','Thanh Khe','0332259891',129459),
('NCC006',N'Bà Trần Bích Vân','Lien Chieu','0322259891',323459),
('NCC007',N'Cty Tnhh Phan Thành','Thanh Khe','0392259991',423459),
('NCC008',N'Ông Phan Đình Nam','Lien Chieu','0392299891',523459),
('NCC009',N'Tập đoàn Đông Nam Á','Hoa Thuan','0393349891',623459),
('NCC010',N'Cty Cổ phần Rạng Đông','Lien Chieu','0336259891',723459);


Select *from Suppliers;

insert into Services(Id,Name)
values('DV01',N'Dịch vụ xe taxi'), 
('DV02',N'Dịch vụ xe buýt công cộng theo tuyến cố định'),
('DV03',N'Dịch vụ xe cho thuê theo hợp đồng');

select *from Services;

insert into Prices(Id, Price, Description)
values('MP01',10000,N'Áp dụng từ ngày 1/2015'),
('MP02',15000,N'Áp dụng từ ngày 2/2015'),
('MP03',20000,N'Áp dụng từ ngày 1/2010'),
('MP04',25000,N'Áp dụng từ ngày 2/2011');

select *from Prices;

insert into Vehicles(Name,Company,Seats)
values ('Hiace','Toyota',16),
('Vios','Toyota',5),
('Escape','Ford',5),
('Cerato','KIA',7),
('Forte','KIA', 5),
('Starex','Hyundai',7),
('Grand-i10','Hyundai',7);

select *from Vehicles;

insert into SupplyRegistrations(Id,SupplierId,ServiceId,VehicleName,PriceId,StarDay,EndDay,Qty)
values('DK001','NCC001','DV01','Hiace','MP01','11/20/2015','11/20/2016',4);

select *from SupplyRegistrations;