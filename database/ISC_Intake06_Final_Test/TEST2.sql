--1 Cho biết danh mục sách do độc giả có số thẻ ISC-18-0-0001 mượn và chưa trả sách (liệt kê mã sách, tên sách, tên nhà xuất bản, ngày mượn) 
select ct.MASACH
from DOCGIA dg, PHIEUMUON pm, CT_MUON ct
where dg.SOTHE=pm.SOTHE and ct.MAPHIEU=pm.MAPHIEU and dg.SOTHE='ISC-18-0-0001' and GETDATE() >NGAYTRA

--2 Cho biết danh sách đọc giả mượn sách quá hạn 1 tuần nhưng chưa trả (liệt kê số thẻ độc giả, , số CMND, họ tên, phái, ngày sinh, địa chỉ, mã sách, tên sách) 
select dg.SOTHE, dg.CMND, dg.HOTEN, dg.PHAI, dg.NGAYSINH, dg.DIACHI, ct.MASACH, s.TENSACH
from DOCGIA dg, PHIEUMUON pm, CT_MUON ct, SACH s
where dg.SOTHE=pm.SOTHE and ct.MAPHIEU=pm.MAPHIEU and ct.MASACH=s.MASACH and (DatePart(GETDATE(),DAY)-NGAYTRA)>7