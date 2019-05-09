using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace Onjob.Models
{
    [Table("CumQuyen")]
    public class CumQuyen
    {
        [Key]
        [Column("ID_CQ")]
        public long Id { get; set; }
        [Column("MaCQ")]
        public string Ma { get; set; }
        [Column("TenCQ")]
        public string Ten { get; set; }
        [Column("MoTaCQ")]
        public string Mota { get; set; }
        [Column("HT_CQ")]
        public bool HienThi { get; set; }
        [Column("Xoa_CQ")]
        public bool Xoa { get; set; }
        [Column("NgayTaoCQ")]
        public DateTime NgayTao { get; set; }
        [Column("NguoiTaoCQ")]
        public string NguoiTao { get; set; }
        [Column("NgayCNCQ")]
        public DateTime NgayCN { get; set; }
        [Column("NguoiCNCQ")]
        public string NguoiCN { get; set; }
        [Column("KhacCQ")]
        public string Khac { get; set; }
    }
}
