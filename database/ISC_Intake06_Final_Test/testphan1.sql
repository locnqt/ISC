--cau 1:In ra danh sách các sản phẩm (MASP, TENSP) có đơn vị tính là “cay”, ”quyen” 
select MASP, TENSP
from SANPHAM
where DVT='cay' or DVT='quyen'

--cau 2: In ra danh sách các sản phẩm (MASP,TENSP,DVT, NUOCSX) do “VietNam” sản xuất có giá từ 30.000 đến 50.000 hoặc “ThaiLan” sản xuất có giá nhỏ hơn 10.000 (10 điểm).
select MASP,TENSP,DVT, NUOCSX, GIA
from SANPHAM
where (NUOCSX='Viet Nam' and GIA >=30000 and GIA <= 50000) or (NUOCSX='Thai Lan' and GIA <10000)

--3. Tìm các số hóa đơn đã mua sản phẩm có mã số “BB01” hoặc “BB02”, mỗi sản phẩm mua với số lượng từ 10 đến 20 (10 điểm).
select SOHD
from CTHD
where MASP='BB01' and SL >=10 and SL <=20
union
select SOHD
from CTHD
where MASP='BB02' and SL >=10 and SL <=20

--4. Tìm số hóa đơn đã mua tất cả các sản phẩm do Singapore sản xuất (10 điểm).
select ct.SOHD
from SANPHAM sp, CTHD ct
where sp.MASP=ct.MASP and sp.NUOCSX='Singapore'
group by ct.SOHD

--5. Với từng nước sản xuất, tìm giá bán cao nhất, thấp nhất, trung bình của các sản phẩm (10 điểm).
select NUOCSX, MAX(GIA) giacaonhat, MIN(GIA) giathapnhat, AVG(GIA) giatrungbinh
from SANPHAM
group by NUOCSX

--6. Tính tổng số lượng của từng sản phẩm bán ra trong tháng 10/2017 
select ct.MASP, SUM(ct.SL) soluong
from CTHD ct, HOADON hd
where ct.SOHD=hd.SOHD and DatePart(MONTH,hd.NGHD) = 10 and DatePart(YEAR,hd.NGHD) = 2017
group by ct.MASP

/*select ct.MASP, ct.SL
from CTHD ct, HOADON hd
where ct.SOHD=hd.SOHD
group by ct.MASP, ct.SL*/