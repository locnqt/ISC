using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace Onjob.Models
{
    [Table("LichSu_LC")]
    public class LichSu_LC
    {
        [Key]
        [Column("ID_LS_LC")]
        public long ID_ { get; set; }
        [Column("ID_LUACHON")]
        public long ID_LC { get; set; }

        [Column("MoTa_LS_LC")]
        public string MoTa { get; set; }

        [Column("NoiDungCN_LS_LC")]
        public string NoiDungCN { get; set; }

        [Column("NoiDungMoi_LS_LC")]
        public string NoiDungMoi { get; set; }
        [Column("NoiDungCu")]
        public string NoiDungCu_LS_LC { get; set; }

        [Column("NguoiCN_LS_LC")]
        public string NguoiCN { get; set; }

        [Column("Ngay_LS_LC")]
        public DateTime Ngay { get; set; }
        [Column("HT_LS_LC")]
        public bool HienThi { get; set; }
        [Column("Xoa_LS_LC")]
        public bool Xoa { get; set; }
        [Column("Khac_LS_LC")]
        public string Khac { get; set; }

        [ForeignKey("ID_LC")]
        public virtual LuaChon LuaChon { get; set; }
    }
}
