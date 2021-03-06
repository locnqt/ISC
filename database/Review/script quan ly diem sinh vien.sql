create table giaovien
(
	MaGV nvarchar(5) not null primary key,
	HoGV	nvarchar(50), 
	TenGV nvarchar(20),
	DiaChi	nvarchar(150),
	Hocvi nvarchar(50)
)

create table sinhvien
(
	MaSV	 nvarchar(5) not null primary key,
	HoSV	nvarchar(50), 
	TenSV	nvarchar(30),
	NgaySinh datetime,	
	DiaChi	nvarchar(150),
	Lop nvarchar(5)

)

create table monhoc
(
	MaMH	nvarchar(5) not null primary key,
	TenMH	nvarchar(150),
	DVHT	int
)

create table hoc
(
	MaSV nvarchar(5) not null,
	MaMH nvarchar(5) not null,
	MaGV nvarchar(5) not null,
	HocKy int,
	NienKhoa nvarchar(20),
	Lanthi int,
	KetQua float,
	primary key (MaSV, MaMH, MaGV)
)

alter table hoc add constraint fk_hoc_sinhvien
	foreign key (masv) references sinhvien(masv)
alter table hoc add constraint fk_hoc_monhoc
	foreign key (mamh) references monhoc(mamh)
alter table hoc add constraint fk_hoc_giaovien
	foreign key (magv) references giaovien(magv)

-- add data
insert into giaovien values('GV001',N'Vũ Đức',N'Phúc',N'Cần Thơ',N'Cử nhân')
insert into giaovien values('GV002',N'Trần Thái',N'An',N'Bạc Liêu',N'Tiến Sĩ')
insert into giaovien values('GV003',N'Lý Quốc',N'Bình',N'Đồng Tháp',N'Thạc sĩ')
insert into giaovien values('GV004',N'Vũ Thị Ngọc',N'Trân',N'Đồng Tháp',N'Cử nhân')
insert into giaovien values('GV005',N'Lê Phú',N'Quí',N'Tiền Giang',N'Thạc sĩ')
insert into giaovien values('GV006',N'Nguyễn Quốc',N'Cường',N'Cần Thơ',N'Tiến sĩ')
insert into giaovien values('GV007',N'Hà Phương',N'Đông',N'Vĩnh Long',N'Thạc sĩ')


insert into sinhvien values('SV001',N'Hồ Văn',N'Quang','05/15/1984',N'Đồng Tháp','TH3A')
insert into sinhvien values('SV002',N'Nguyễn Văn',N'Thành','02/18/1983',N'Vĩnh Long','28K10')
insert into sinhvien values('SV003',N'Lê Phong',N'Ba','08/25/1982',N'Tiền Giang','27K10')
insert into sinhvien values('SV004',N'Hà Thị',N'Tí','03/29/1984',N'Cà Mau','TH3A')
insert into sinhvien values('SV005',N'Trần Ngọc',N'Phụng','10/08/1983',N'Cần Thơ','28K10')
insert into sinhvien values('SV006',N'Lê Phong Bích',N'Nguyệt','07/12/1983',N'Đồng Tháp','TH3A')
insert into sinhvien values('SV007',N'Lý Thị Ngọc',N'Điệp','06/19/1984',N'Trà Vinh','TIN06')
insert into sinhvien values('SV008',N'Nguyễn Đức',N'Tài','01/17/1984',N'Vĩnh Long','TIN06')
insert into sinhvien values('SV009',N'Thái Bình',N'An','09/25/1983',N'Đồng Tháp','28K10')
insert into sinhvien values('SV010',N'Lê Đức Anh',N'Khoa','04/18/1985',N'Cà Mau','TH4A')
insert into sinhvien values('SV011',N'Trần Thi',N'Cử','02/17/1986',N'Đồng Tháp','TH5A')
insert into sinhvien values('SV012',N'Hồ Thị Út',N'Em','05/19/1985',N'Tiền Giang','TH5A')
insert into sinhvien values('SV013',N'Thái Thị bách',N'Hoa','04/12/1984',N'Bạc Liêu','TIN06')


insert into monhoc values('TH301',N'Kỹ thuật lập trình C',4)
insert into monhoc values('TH302',N'Cấu trúc dữ liệu & Giải thuật',5)
insert into monhoc values('TH303',N'Toán rời rạc',4)
insert into monhoc values('TH304',N'Cơ sở dữ liệu',5)
insert into monhoc values('TH305',N'Lập trình hướng đối tượng',4)
insert into monhoc values('TH306',N'Mạng máy tính',3)
insert into monhoc values('TH307',N'Phân tích và Thiết kế hệ thống',4)
insert into monhoc values('TH308',N'Lập trình Internet',4)
insert into monhoc values('TH309',N'Kiến trúc máy tính',2)
insert into monhoc values('TH310',N'Cơ sở dữ liệu nâng cao',4)


insert into hoc values('SV001','TH301','GV001',1,'2005-2006',1,6)
insert into hoc values('SV001','TH302','GV001',1,'2005-2006',1,4)
insert into hoc values('SV001','TH303','GV001',1,'2005-2006',2,7)
insert into hoc values('SV001','TH303','GV002',2,'2006-2007',1,8)
insert into hoc values('SV001','TH304','GV002',2,'2006-2007',1,9.5)
insert into hoc values('SV002','TH304','GV002',2,'2006-2007',1,10)
insert into hoc values('SV002','TH305','GV003',2,'2006-2007',1,6.5)
insert into hoc values('SV002','TH309','GV007',2,'2006-2007',1,8.5)
insert into hoc values('SV003','TH304','GV002',2,'2006-2007',1,5)
insert into hoc values('SV003','TH305','GV003',1,'2005-2006',1,6)
insert into hoc values('SV004','TH304','GV002',2,'2005-2006',1,7)
insert into hoc values('SV004','TH305','GV003',1,'2005-2006',1,8.5)
insert into hoc values('SV005','TH305','GV003',1,'2005-2006',1,7.5)
insert into hoc values('SV005','TH308','GV005',2,'2006-2007',1,6.5)
insert into hoc values('SV006','TH307','GV004',2,'2006-2007',1,8)
insert into hoc values('SV006','TH308','GV005',1,'2006-2007',1,9)
insert into hoc values('SV007','TH307','GV001',2,'2006-2007',1,10)
insert into hoc values('SV007','TH308','GV006',1,'2006-2007',1,9.5)
insert into hoc values('SV008','TH307','GV004',2,'2006-2007',1,10)
insert into hoc values('SV008','TH308','GV007',2,'2005-2006',1,7)
insert into hoc values('SV008','TH309','GV007',2,'2005-2006',2,8)
insert into hoc values('SV009','TH307','GV002',2,'2005-2006',1,7)
insert into hoc values('SV009','TH309','GV001',2,'2005-2006',1,3.5)
insert into hoc values('SV013','TH302','GV002',2,'2005-2006',1,4.5)
insert into hoc values('SV007','TH302','GV004',2,'2006-2007',1,3)



