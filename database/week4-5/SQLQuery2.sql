PHAN I: truy van gom nhom
cau 1:
select da.MADA, da.TENDA, SUM(pc.THOIGIAN) as TongThoiGian
from DEAN da, PHANCONG pc
where da.MADA = pc.SODA
group by da.MADA, da.TENDA

cau 2:
select nv.HONV + nv.TENLOT + nv.TENNV as hoten_NV, COUNT(tn.MA_NVIEN) as so_thannhan
from NHANVIEN nv, THANNHAN tn
where nv.MANV = tn.MA_NVIEN
group by nv.HONV, nv.TENLOT, nv.TENNV, tn.MA_NVIEN

cau 3:
select pb.TENPHG, AVG(nv.LUONG) as luong_tb
from PHONGBAN pb, NHANVIEN nv
where pb.MAPHG = nv.PHG
group by pb.TENPHG

cau 4:
select PHAI, AVG(luong) as luong_tb
from NHANVIEN
where PHAI='Nu'
group by PHAI

cau 5:
select pb.TENPHG, AVG(nv.LUONG) as luong_tb, COUNT(nv.MANV) as so_nv
from PHONGBAN pb, NHANVIEN nv
where pb.MAPHG=nv.PHG  
group by pb.TENPHG
having AVG(nv.LUONG)>30000

PHAN II: truy van long
cau 1:
select da.MADA
from DEAN da
where da.MADA in (select pc.SODA from NHANVIEN nv, PHANCONG pc where nv.MANV=pc.MA_NVIEN and nv.HONV='Dinh')
 or da.PHONG in (select da.MADA from PHONGBAN pb, DEAN da, NHANVIEN nv where pb.MAPHG=da.PHONG and pb.TRPHG=nv.MANV and nv.HONV='Dinh')

cau 2:
select HONV,TENLOT,TENNV,TEMP.SOTN
from NHANVIEN ,(select MA_NVIEN , COUNT(*) as SOTN
				from THANNHAN
				group by MA_NVIEN)as TEMP
where MANV=TEMP.MA_NVIEN AND TEMP.SOTN>=2

cau 3:
select HONV,TENLOT,TENNV
from NHANVIEN
where MANV NOT IN (select MA_NVIEN
					from THANNHAN)
					
cau 4:
select HONV,TENLOT,TENNV
from NHANVIEN
where MANV in (select MA_NVIEN from THANNHAN )
and MANV in (select TRPHG from PHONGBAN)

cau 5:
select HONV
from NHANVIEN
where MANV in (select TRPHG from PHONGBAN)
AND MANV not in (select MA_NVIEN from THANNHAN)

cau 6:
select HONV,TENLOT,TENNV,LUONG
from NHANVIEN
where LUONG>(select AVG(LUONG)
				from NHANVIEN
				where PHG in (select MAPHG
								from PHONGBAN
								where TENPHG='Nghien Cuu'))


cau 7: 
select PB.TENPHG, NV.HONV, NV.TENNV,TEMP.SONV
from PHONGBAN PB,NHANVIEN NV,(select PHG, COUNT(*) AS SONV
								from NHANVIEN
								group by PHG
								HAVING COUNT(*)=(select MAX(TEMP.SONV)
												from(select  COUNT(*) AS SONV
												from NHANVIEN
												GROUP BY PHG)AS TEMP))as TEMP
Where PB.TRPHG=NV.MANV
AND PB.MAPHG=TEMP.PHG


select PB.TENPHG, nv.HONV+ nv.TENLOT+ nv.TENNV as Hoten_truongphong,TEMP.SONV
from PHONGBAN PB,NHANVIEN NV,(select top 1 PHG, COUNT(*) AS SONV
								from NHANVIEN
								group by PHG
								ORDER BY COUNT(*)DESC) as TEMP
Where PB.TRPHG=NV.MANV
AND PB.MAPHG=TEMP.PHG								

cau 8:
select HONV,TENLOT,TENNV,DCHI
from NHANVIEN
where MANV in (select pc.MA_NVIEN
				FROM DEAN da,PHANCONG pc
				where da.MADA=pc.SODA
				AND da.DDIEM_DA='TP HCM')
AND PHG in (select pb.MAPHG
			from PHONGBAN pb,DIADIEM_PHG dd
			where pb.MAPHG=dd.MAPHG
			and dd.DIADIEM not like 'TP HCM')

cau 9:
select MANV,HONV,TENLOT,TENNV,DCHI
from NHANVIEN
where not exists (select pc.MA_NVIEN
			from PHONGBAN pb,DIADIEM_PHG dd, DEAN da,PHANCONG pc
			where pb.MAPHG=dd.MAPHG and da.MADA=pc.SODA
			and dd.DIADIEM = da.DDIEM_DA)
			
/*select pc.MA_NVIEN,pb.MAPHG, dd.DIADIEM, da.DDIEM_DA, da.MADA, pc.SODA
			from PHONGBAN pb,DIADIEM_PHG dd, DEAN da,PHANCONG pc
			where pb.MAPHG=dd.MAPHG and da.MADA=pc.SODA
group by pc.MA_NVIEN,pb.MAPHG, dd.DIADIEM, da.DDIEM_DA, da.MADA, pc.SODA
order by pc.MA_NVIEN*/

