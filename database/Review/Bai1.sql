cau 1: In ra thông tin gồm mã số và tên các môn học có số đơn vị học trình từ 3 trở lên
select MaMH, TenMH from monhoc where DVHT >=3;

cau 2: In ra danh sách các sinh viên thi lần 2 ở năm học 2006-2007
select HoSV, TenSV from sinhvien sv inner join hoc h on sv.MaSV = h.MaSV where h.NienKhoa like '2005-2006' and h.Lanthi=2;

cau 3: Thêm môn học mới “TH311”, “Trí tuệ nhân tạo”, 3 đvht vào quan hệ môn học
insert into monhoc(MaMH, TenMH, DVHT) values ('TH311', N'Trí tuệ nhân tạo', 3);

cau 4:Thêm cột GhiChu vào quan hệ hoc có kiểu dữ liệu nvarchar(25). Cập nhật giá trị cho cột GhiChu trong quan
		hệ học như sau:
		Nếu KetQua >=5 thì GhiChu =”Đạt”, ngược lại GhiChu=”Không Đạt”

ALTER TABLE hoc
ADD GhiChu nvarchar(25);
Update hoc
Set  GhiChu = N'Đạt'
Where  KetQua >= 5 ;
Update hoc
Set  GhiChu = N'Không Đạt'
Where  KetQua < 5 ;

cau 5: In ra thông tin các môn học không được giảng dạy vào học ky 2 năm học 2006-2007
select * from monhoc where monhoc.MaMH not in (select mh.MaMH from monhoc mh inner join hoc h on mh.MaMH = h.MaMH where h.HocKy = 2 and h.NienKhoa like '2006-2007');

cau 6: In ra các môn học vừa được học bởi các sinh viên lớp TH3A và lớp TH4A
select TenMH from monhoc where MaMH in (select MaMH from hoc where MaSV in (select MaSV from sinhvien where sinhvien.Lop like 'TH3A' or sinhvien.Lop like 'TH4A') and HocKy = 2 and NienKhoa like '2006-2007');

cau 7: In ra thông tin các môn học có tổng số lần học của các sinh viên là nhiều nhất và tổng số lần học tương ứng.
-c1:
select mh.tenmh, count(h.lanthi) solanhoc
from monhoc mh, hoc h
where mh.MaMH = h.MaMH
group by mh.tenmh
having COUNT(h.lanthi) >= all (select COUNT(lanthi) from hoc group by mamh);
-c2:
select mh.TenMH, COUNT(h.Lanthi) solanhoc
from monhoc mh, hoc h
where mh.MaMH = h.MaMH
group by mh.TenMH
having COUNT(h.Lanthi) = (
							select MAX(solanthi)
							from(
								select count(lanthi) solanthi 
								from hoc 
								group by mamh
							)as temp
						)

cau 8: In ra các sinh viên có điểm thi lớn nhất, nhỏ nhấ theo từng lớp, theo từng môn.
select sv.Lop, MAX(sv.TenSV) tencodiemcaonhat,MAX(h.KetQua) diemcaonhat, MIN(sv.TenSV) tencodiemthapnhat, MIN(h.KetQua) diemthapnhat
from sinhvien sv, hoc h
where sv.MaSV = h.MaSV 
group by sv.Lop

select mh.TenMH, MAX(sv.TenSV) tencodiemcaonhat,MAX(h.KetQua) diemcaonhat,MIN(sv.TenSV) tencodiemthapnhat,MIN(h.KetQua) diemthapnhat
from sinhvien sv, hoc h, monhoc mh
where sv.MaSV = h.MaSV AND mh.MaMH = h.MaMH
group by mh.TenMH

cau 9: Cho biết sinh viên nào học nhiều môn nhất ở năm học 2006-2007, in ra số lượng học môn cụ thể
-c1:
select sv.MaSV, count(h.MaSV) somonhoc
from monhoc mh, hoc h, sinhvien sv
where mh.MaMH = h.MaMH and sv.MaSV = h.MaSV and h.NienKhoa like '2006-2007'
group by sv.MaSV
having COUNT(h.MaSV) >= all (select COUNT(MaSV) from hoc where hoc.NienKhoa like '2006-2007' group by mamh);
-c2:
select sv.MaSV, count(h.MaSV) somonhoc
from monhoc mh, hoc h, sinhvien sv
where mh.MaMH = h.MaMH and sv.MaSV = h.MaSV and h.NienKhoa like '2006-2007'
group by sv.MaSV
having COUNT(h.MaSV) = (
							select MAX(somonhoc)
							from(
								select count(MaSV) somonhoc 
								from hoc where hoc.NienKhoa like '2006-2007'
								group by mamh
							)as temp
						)
						
cau 10: In ra thông tin của giáo viên dạy nhiều sinh viên nhất
select * from giaovien gv1 where gv1.MaGV in (
select gv.MaGV
from giaovien gv, hoc h, sinhvien sv
where gv.MaGV = h.MaGV and sv.MaSV = h.MaSV
group by gv.MaGV
having COUNT(h.MaSV) >= all (select COUNT(MaSV) from hoc group by MaGV));

(??)cau 11: In ra thông tin của môn học có nhiều sinh viên không phải thi lại nhiều nhất.
select * from monhoc mh1 where mh1.MaMH not in(
select mh.MaMH
from monhoc mh, hoc h
where mh.MaMH = h.MaMH and h.Lanthi = 2
group by mh.MaMH
having COUNT(h.lanthi) <= all (select COUNT(lanthi) from hoc group by mamh));

cau 12: In ra điểm trung bình theo từng học kỳ niên khoá của mỗi sinh viên và cho biết sinh viên có điểm trung bình lớn
		nhất theo từng học kỳ niên khoá.
select nienkhoa, masv, AVG(ketqua) diemtb
from hoc h
group by h.nienkhoa, h.masv
having AVG(h.ketqua)>=all( select AVG(ketqua) diemtb from hoc h1 where h.nienkhoa=h1.nienkhoa group by nienkhoa , masv)