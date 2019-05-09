using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace Onjob.Models
{
    [Table("LuaChon")]
    public class LuaChon
    {
        [Key]
        [Column("ID_LUACHON")]
        public long ID { set; get; }

        [Column("ID_CH")]
        public long ID_CH { get; set; }

        [Column("MaLuaChon")]
        public string Ma { get; set; }

        [Column("NoiDung_LuaChon")]
        public string NoiDung { get; set; }

        [Column("DapAn")]
        public bool DapAn { get; set; }

        [Column("HT_LuaChon")]
        public bool HienThi { get; set; }

        [Column("Xoa_LuaChon")]
        public bool Xoa { get; set; }

        [Column("NguoiTao_LuaChon")]
        public string NguoiTao { get; set; }

        [Column("NgayTao_LuaChon")]
        public DateTime NgayTao { get; set; }

        [Column("NguoiCN_LuaChon")]
        public string NguoiCN { get; set; }

        [Column("NgayCN_LuaChon")]
        public DateTime NgayCN { get; set; }

        [Column("Khac_LuaChon")]
        public string Khac { get; set; }

        [ForeignKey("ID_CH")]
        public virtual CauHoi CauHoi { get; set; }
    }
}
