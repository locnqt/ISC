using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace Onjob.Models
{
    [Table("ChiTiet_BaiThi")]
    public class ChiTiet_BaiThi
    {
        [Key]
        [Column("ID_CTBAITHI")]
        public long ID_CTBAITHI { get; set; }

        [Column("ID_BAITHI")]
        public long Id_BaiTThi { get; set; }

        [Column("ID_CauHoi")]
        public long ID_CauHoi { get; set; }

        [Column("ThiSinh_LuaChon")]
        public string LuaChon { get; set; }

        [Column("HT_ChiTiet_BaiThi")]
        public bool HienThi { get; set; }

        [Column("Xoa_CTBT")]
        public bool Xoa { get; set; }

        [Column("Diem_BaiThi")]
        public double Diem { get; set; }
        [Column("Khac_CTBT")]
        public string Khac { get; set; }
        [Column("ThuTu_LuaChon")]
        public string ThuTuLC { get; set; }
        [Column("TT_TraLoi")]
        public bool ThuTuTL { get; set; }

        [ForeignKey("Id_BaiThi")]
        public virtual Baithi Baithi { get; set; }

        [ForeignKey("ID_CauHoi")]
        public virtual CauHoi CauHoi { get; set; }
    }
}
