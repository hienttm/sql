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
values('DK001','NCC001','DV01','Hiace','MP01','2015/11/20','11/20/2016',4),
('DK003','NCC003','DV03','Escape','MP03','2017/11/20','2018/11/20',5),
('DK004','NCC005','DV01','Cerato','MP04','2015/11/20','2016/11/20',7),
('DK005','NCC002','DV02','Forte','MP03','2019/11/20','2020/11/20',1),
('DK006','NCC004','DV03','Starex','MP04','2015/11/10','2016/11/20',2),
('DK007','NCC005','DV01','Cerato','MP03','2015/11/30','2016/11/20',8),
('DK008','NCC006','DV01','Vios','MP02','2016/02/28','2016/11/20',9),
('DK009','NCC005','DV03','Grand-i10','MP02','2015/11/20','2016/11/20',10),
('DK010','NCC006','DV01','Forte','MP02','2015/11/20','2016/11/20',4),
('DK011','NCC007','DV01','Forte','MP01','2015/11/20','2016/11/20',5),
('DK012','NCC007','DV03','Cerato','MP01','2015/11/20','2016/11/20',6),
('DK013','NCC003','DV02','Cerato','MP01','2015/11/20','2016/11/20',8),
('DK014','NCC008','DV02','Cerato','MP01','2015/11/20','2016/11/20',1),
('DK015','NCC003','DV01','Hiace','MP02','2015/11/20','2016/11/20',6),
('DK016','NCC001','DV03','Grand-i10','MP02','2015/11/20','2016/11/20',8),
('DK017','NCC003','DV03','Cerato','MP03','2015/11/20','2016/11/20',4),
('DK018','NCC008','DV03','Escape','MP04','2015/11/20','2016/11/20',2),
('DK019','NCC003','DV03','Escape','MP03','2015/11/20','2016/11/20',8),
('DK020','NCC002','DV03','Cerato','MP04','2015/11/20','2016/11/20',7),
('DK021','NCC006','DV01','Forte','MP02','2015/11/20','2016/11/20',9),
('DK022','NCC003','DV02','Cerato','MP04','2015/11/20','2016/11/20',6),
('DK023','NCC002','DV01','Forte','MP03','2015/11/20','2016/11/20',5),
('DK024','NCC003','DV03','Forte','MP04','2015/11/20','2016/11/20',8),
('DK025','NCC003','DV03','Hiace','MP02','2015/11/20','2016/11/20',1);

select *from SupplyRegistrations;
