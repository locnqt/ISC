cau 3:  Tăng giá sản phẩm Apple lên 5% (bắt đầu với ký tự ‘i’) .
UPDATE PRODUCTS
SET PRICE = PRICE*105/100
WHERE PRODUCTNAME = 'i%';

cau 4:	Tăng chiều dài cột Product Name từ 50 lên 100 ký tự .
ALTER TABLE PRODUCTS ALTER COLUMN PRODUCTNAME VARCHAR(100)

cau 5) Cho biết giá bán sản phẩm (Selling Price) lớn hơn giá thành sản phẩm tương ứng .
select ri.PRICE Selling_Price --*
from PRODUCTS pd, RECEIPTITEMS ri
where pd.PRO_ID=ri.PRO_ID and ri.PRICE>pd.PRICE

cau 6) Cho biết các sản phẩm không bán được . 
select PRO_ID
from PRODUCTS pd
where PRO_ID not in (select PRO_ID from RECEIPTITEMS)

cau 7) Xóa các khách hàng không có mua bất kỳ sản phẩm nào .
delete
from CUSTOMERS 
where CUS_ID not in (select CUS_ID from RECEIPTS)
select *
from CUSTOMERS 
where CUS_ID not in (select CUS_ID from RECEIPTS)

cau 8) Cho biết thông tin hóa đơn gần đây nhất .
select *
from RECEIPTS
select max(RECEIPTDATE)
from RECEIPTS
