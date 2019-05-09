using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace Onjob.Models
{
    [Table("BaiThi")]
    public class Baithi
    {
        [Key]
        [Column("ID_BAITHI")]
        public long Id { get; set; }

        [Column("ID_DE")]
        public long ID_DETHI { get; set; }

        [Column("ID_DANGKY")]
        public long ID_DANGKY { get; set; }

        [Column("Ma_BaiThi")]
        public string Ma { get; set; }
        
        [Column("ThoiGianConLai_BaiThi")]
        public int TgConLai { get; set; }

        [Column("NgayThi")]
        public DateTime NgayThi { get; set; }

        [Column("Khac_BaiThi")]
        public string Khac { get; set; }

        [Column("HT_BaiThi")]
        public bool HienThi { get; set; }

        [Column("ThuTu_CauHoi")]
        public string ThuTuCH { get; set; }
        
        [Column("Xoa_BaiThi")]
        public bool Xoa { get; set; }

        [ForeignKey("ID_DETHI")]
        public virtual List<DanhSach_DeThi> Ds_DeThi { get; set; }

        [ForeignKey("ID_DANGKY")]
        public virtual DangKy DangKy { get; set; }
    }
}
