-----III----
cau 1:
select MAHV, HO, TEN, NGAYSINH, HOCVIEN.MALOP
from HOCVIEN, LOP
where HOCVIEN.MAHV  = LOP.TRGLOP

cau 2:
select HOCVIEN.MAHV, HO, TEN, LANTHI, DIEM
from HOCVIEN, KETQUATHI
where KETQUATHI.MAMH='CTRR' and HOCVIEN.MALOP='K12' and KETQUATHI.MAHV=HOCVIEN.MAHV
order by HO

cau 3:
select hv.MAHV, hv.HO, hv.TEN, mh.TENMH
from HOCVIEN hv, KETQUATHI kq, MONHOC mh
where hv.MAHV=kq.MAHV and mh.MAMH=kq.MAMH and kq.LANTHI='1' and kq.KETQUA='Dat'

cau 4:
select HOCVIEN.MAHV, HO, TEN, LANTHI, DIEM, lanthi
from HOCVIEN, KETQUATHI
where KETQUATHI.MAMH='CTRR' and HOCVIEN.MALOP='K11' and KETQUATHI.MAHV=HOCVIEN.MAHV and LANTHI = 1 and ketqua='Khong Dat'

cau 5:
select HOCVIEN.MAHV, HO, TEN, LANTHI, DIEM, lanthi
from HOCVIEN, KETQUATHI
where KETQUATHI.MAMH='CTRR' and HOCVIEN.MALOP like 'K%' and KETQUATHI.MAHV=HOCVIEN.MAHV and ketqua='Khong Dat'

cau 6:
select mh.MAMH, mh.TENMH
from MONHOC mh, GIAOVIEN gv, GIANGDAY gd
where mh.MAMH = gd.MAMH and GV.MAGV=GD.MAGV and gv.HOTEN like 'Tran Tam Thanh' and gd.hocky like '1' and gd.namhoc like '2006'

cau 7:
select mh.MAMH, mh.TENMH
from MONHOC mh, GIANGDAY gd, LOP lp
where mh.MAMH=gd.MAMH and gd.MALOP=lp.MALOP and gd.MAGV=lp.MAGVCN and lp.MALOP='K11' and gd.hocky like '1' and gd.namhoc like '2006'

cau 8:
select hv.HO, hv.TEN
from HOCVIEN hv, GIANGDAY gd, LOP lp, GIAOVIEN gv, MONHOC mh
where hv.MAHV=lp.TRGLOP and gd.MAGV=gv.MAGV and gd.MAMH=mh.MAMH and lp.MALOP=gd.MALOP and mh.TENMH='Co So Du Lieu' and gv.HOTEN='Nguyen To Lan'

cau 9:
select mh.MAMH, mh.TENMH
from MONHOC mh, DIEUKIEN dk
where mh.MAMH=dk.MAMH_TRUOC and dk.MAMH='CSDL'

cau 10:
select mh.MAMH, mh.TENMH
from MONHOC mh, DIEUKIEN dk
where mh.MAMH=dk.MAMH and dk.MAMH_TRUOC='CTRR'

cau 11:
select gv.MAGV, gv.HOTEN
from GIAOVIEN gv, GIANGDAY gd
where gv.MAGV=gd.MAGV and gd.MAMH='CTRR' and gd.MALOP in ('K11','K12') and gd.HOCKY=1 and gd.NAMHOC='2006'
group by gv.MAGV, gv.HOTEN
having COUNT(gd.MALOP)=2

cau 12:
select hv.MAHV, hv.HO, hv.TEN
from HOCVIEN hv, KETQUATHI kq
where hv.MAHV=kq.MAHV and kq.LANTHI=1 and kq.MAMH='CSDL' and kq.KETQUA='Khong Dat'
except
select hv.MAHV, hv.HO, hv.TEN
from HOCVIEN hv, KETQUATHI kq
where hv.MAHV=kq.MAHV and kq.LANTHI!=1 and kq.MAMH='CSDL'

select hv.MAHV, hv.HO, hv.TEN
from HOCVIEN hv, KETQUATHI kq
where hv.MAHV=kq.MAHV and kq.LANTHI=1 and kq.MAMH='CSDL' and kq.KETQUA='Khong Dat' and kq.MAHV not in (select mahv from KETQUATHI kq where kq.LANTHI=2 and kq.mamh='CSDL')

cau 13:
select gv.MAGV, gv.HOTEN
from GIAOVIEN gv
where gv.MAGV not in (select gd.MAGV from GIANGDAY gd)

select gv.MAGV, gv.HOTEN
from GIAOVIEN gv left join GIANGDAY gd on gv.MAGV=gd.MAGV
where gd.MAGV is null

cau 14:
select kh.MAKHOA, gv.MAGV, gv.HOTEN
from GIAOVIEN gv, KHOA kh, MONHOC mh
where gv.MAKHOA=kh.MAKHOA and mh.MAKHOA=kh.MAKHOA -- mon hoc thuoc khoa giao vien phu trach
	and gv.MAGV not in (select gd.MAGV from GIANGDAY gd)
group by kh.MAKHOA, gv.MAGV, gv.HOTEN

cau 15:
select hv.MAHV, hv.HO, hv.TEN, kq.MAMH
from HOCVIEN hv, KETQUATHI kq
where hv.MAHV=kq.MAHV and hv.MALOP='K11' 
	and ((kq.LANTHI=3 and kq.KETQUA='Khong Dat')or(kq.LANTHI=2 and kq.MAMH='CTRR' and kq.DIEM=5))
group by hv.MAHV, hv.HO, hv.TEN, kq.MAMH

--thay
select hv.MAHV, hv.HO, hv.TEN, kq.MAMH
from HOCVIEN hv, KETQUATHI kq
where hv.MAHV=kq.MAHV and hv.MALOP='K11' and kq.KETQUA='Khong Dat'
group by hv.MAHV, hv.HO, hv.TEN, kq.MAMH
having COUNT(kq.LANTHI)=3
union
select hv.MAHV, hv.HO, hv.TEN, kq.MAMH
from HOCVIEN hv, KETQUATHI kq
where hv.MAHV=kq.MAHV and hv.MALOP='K11' 
	and kq.LANTHI=2 and kq.MAMH='CTRR' and kq.DIEM=5

cau 16: ??
--thay
select gv.MAGV, gv.HOTEN, gd.HOCKY, gd.NAMHOC
from GIAOVIEN gv, GIANGDAY gd
where gv.MAGV=gd.MAGV
	and gd.MAMH='CTRR'
group by gv.MAGV, gv.HOTEN, gd.HOCKY, gd.NAMHOC
having COUNT(gd.MALOP)>=2

cau 17: ??
--thay
select hv.MAHV,hv.HO, hv.TEN, kq.DIEM, kq.LANTHI
from HOCVIEN hv, KETQUATHI kq
where hv.MAHV=kq.MAHV and kq.MAMH='CSDL'
	and kq.LANTHI >= all (select kq1.LANTHI from KETQUATHI kq1 
						where kq1.MAMH=kq.MAMH and kq1.MAHV=kq.MAHV)
						
select hv.MAHV,hv.HO, hv.TEN, kq.DIEM, kq.LANTHI
from HOCVIEN hv, KETQUATHI kq
where hv.MAHV=kq.MAHV and kq.MAMH='CSDL'
	and kq.LANTHI = (select max(kq1.LANTHI) from KETQUATHI kq1 
						where kq1.MAMH=kq.MAMH and kq1.MAHV=kq.MAHV)

cau 18:
--thay
select hv.MAHV,hv.HO, hv.TEN, kq.DIEM, kq.LANTHI
from HOCVIEN hv, KETQUATHI kq, MONHOC mh
where hv.MAHV=kq.MAHV and mh.MAMH=kq.MAMH and mh.TENMH='Co So Du Lieu' 
	and kq.LANTHI = (select max(kq1.LANTHI) from KETQUATHI kq1 
						where kq1.MAMH=kq.MAMH and kq1.MAHV=kq.MAHV) 


cau 19:
--tu lam
SELECT MAKHOA, TENKHOA, MIN(NGAYTL) as NGAYTLSOMNHAT
FROM KHOA
GROUP BY MAKHOA, TENKHOA
having MIN(NGAYTL) <= all (SELECT MIN(NGAYTL)FROM KHOA)
--thay
select *
from KHOA
where NGAYTL = (select MIN(NGAYTL) from KHOA)

select *
from KHOA
where NGAYTL <= all (select NGAYTL from KHOA)

cau 20:
--thay
select COUNT(*) as soGSvaPGS
from GIAOVIEN
where HOCHAM in ('GS','PGS') 
-- tulam
select COUNT(*) as soGSvaPGS
from GIAOVIEN
where HOCHAM='GS' or HOCHAM='PGS'

cau 21:
--thay
select k.TENKHOA, COUNT(gv.MAGV) sl_gv
from KHOA k, GIAOVIEN gv
where k.MAKHOA = gv.MAKHOA
	and gv.HOCVI in( 'CN','KS','ThS','TS','PTS')
group by k.TENKHOA

--google
SELECT MAKHOA, 'soCN'=sum(case when HOCVI='CN' then 1 else 0 end ),'soKS'=sum(case when HOCVI='KS' then 1 else 0 end ),'soThs'=sum(case when HOCVI='ThS' then 1 else 0 end ),'soTS'=sum(case when HOCVI='TS' then 1 else 0 end ),'soPTS'=sum(case when HOCVI='PTS' then 1 else 0 end )
FROM GIAOVIEN
group by MAKHOA

cau 22:
--thay
select mh.TENMH, kq.KETQUA, COUNT(kq.MAHV) sl
from MONHOC mh, KETQUATHI kq
where mh.MAMH=kq.MAMH
	and kq.DIEM >= all (select kq1.diem from KETQUATHI kq1 where kq.MAHV=kq1.MAHV and kq.MAMH=kq1.MAMH)
group by mh.TENMH, kq.KETQUA
order by mh.TENMH, kq.KETQUA

select mh.TENMH 'MaMH',sum(case when KETQUA='Dat' then 1 end) sl_dat,sum(case when KETQUA='Khong Dat' then 1 end) sl_khongdat
from KETQUATHI kq, MONHOC mh
where mh.MAMH=kq.MAMH 
	and kq.DIEM >= all (select kq1.diem from KETQUATHI kq1 where kq.MAHV=kq1.MAHV and kq.MAMH=kq1.MAMH)
group by mh.TENMH
order by mh.TENMH

select *
from KETQUATHI kq
where kq.DIEM >= all (select kq1.diem from KETQUATHI kq1 where kq.MAHV=kq1.MAHV and kq.MAMH=kq1.MAMH)
order by mamh

cau 23:
--thay
select * 
from LOP

select distinct gv.MAGV, gv.HOTEN
from GIANGDAY gd, GIAOVIEN gv
where gv.MAGV=gd.MAGV and gd.MAGV in (select l.MAGVCN from lop l where gd.MALOP=l.MALOP)

select gv.MAGV,gv.HOTEN
from GIAOVIEN gv, GIANGDAY gd, LOP lp 
where gv.MAGV=gd.MAGV 
	and gd.MAGV=lp.MAGVCN and gd.MALOP=lp.MALOP
group by gv.MAGV,gv.HOTEN

cau 24:
--thay
select hv.MAHV, hv.HO, hv.TEN
from LOP l, HOCVIEN hv
where hv.MAHV=l.TRGLOP
	and l.SISO = (select MAX(SISO) from LOP)

select hv.HO+hv.TEN as hotenloptruong, MAX(lp.SISO) as siso
from LOP lp, HOCVIEN hv
where lp.TRGLOP=hv.MAHV
group by hv.HO, hv.TEN
having MAX(lp.SISO) >= all( select  MAX(lp.SISO)
							from LOP lp, HOCVIEN hv
							where lp.TRGLOP=hv.MAHV
							group by hv.HO, hv.TEN)
				
cau 25:??
--thay éo làm

select hv.HO, hv.TEN
from HOCVIEN hv, LOP lp, KETQUATHI kq
where hv.MAHV=lp.TRGLOP and kq.MAHV=hv.MAHV and kq.KETQUA='Khong Dat'

--thay
cau 26:-- viet theo kieu huong doi tuong
with kq
as(
select kq.MAHV, COUNT(kq.MAMH) sl_mh
from KETQUATHI kq
where kq.DIEM between 9 and 10
group by kq.MAHV)
select *
from kq
where kq.sl_mh >= all(select kq1.sl_mh from kq kq1)

cau 27:
select kq.MAHV, COUNT(kq.MAMH) sl_mh, hv.MALOP
from KETQUATHI kq, HOCVIEN hv
where kq.DIEM between 9 and 10 and kq.MAHV=hv.MAHV
group by kq.MAHV, hv.MALOP

cau 28:
/*select gd.HOCKY, gd.NAMHOC, gd.MAGV, gd.MALOP, gd.MAMH
from GIANGDAY gd, GIAOVIEN gv
where gd.MAGV=gv.MAGV
order by gd.NAMHOC*/

select gd.HOCKY, gd.NAMHOC, gv.MAGV, COUNT(DISTINCT gd.MAMH) soMH, COUNT(DISTINCT gd.MALOP) soLop
from GIANGDAY gd, GIAOVIEN gv
where gd.MAGV=gv.MAGV
group by gd.HOCKY, gd.NAMHOC, gv.MAGV

cau 29:
with temp
as(
select gd.HOCKY, gd.NAMHOC, gv.MAGV, gv.HOTEN, COUNT(DISTINCT gd.MAMH) soMH, COUNT(DISTINCT gd.MALOP) soLop
from GIANGDAY gd, GIAOVIEN gv
where gd.MAGV=gv.MAGV
group by gd.HOCKY, gd.NAMHOC, gv.MAGV, gv.HOTEN)
select MAGV, HOTEN, soLop
from temp
where temp.soLop >= all(select t.soLop from temp t)

cau 30:
select mh.MAMH, mh.TENMH, COUNT(*) so_lg
from MONHOC mh, KETQUATHI kq
where mh.MAMH=kq.MAMH and kq.LANTHI=1 and kq.KETQUA='Khong Dat'
group by mh.MAMH, mh.TENMH
having COUNT(*) >= all (select COUNT(*) so_lg
					from MONHOC mh, KETQUATHI kq
					where mh.MAMH=kq.MAMH and kq.LANTHI=1 and kq.KETQUA='Khong Dat'
					group by mh.MAMH, mh.TENMH)
cau 31:
/*select *
from HOCVIEN hv, KETQUATHI kq
where hv.MAHV=kq.MAHV and kq.KETQUA='Dat'*/

select hv.HO, hv.TEN
from HOCVIEN hv, KETQUATHI kq
where hv.MAHV=kq.MAHV and hv.MAHV not in (select hv1.MAHV from HOCVIEN hv1, KETQUATHI kq1 
										where hv1.MAHV=kq1.MAHV and kq1.KETQUA='Khong Dat' or kq.LANTHI > 1)
group by hv.HO, hv.TEN

cau 32:						
select hv.HO, hv.TEN
from HOCVIEN hv, KETQUATHI kq
where hv.MAHV=kq.MAHV and kq.LANTHI >= all (select kq1.LANTHI from KETQUATHI kq1 
						where kq1.MAMH=kq.MAMH and kq1.MAHV=kq.MAHV)
group by hv.HO, hv.TEN

cau 33:??

