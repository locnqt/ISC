using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace Onjob.Models
{
    [Table("CauHoi")]
    public class CauHoi
    {
        [Key]
        [Column("ID_CH")]
        public long ID { get; set; }

        [Column("ID_LoaiCH")]
        public long ID_LoaiCH { get; set; }

        [Column("ID_DeMuc")]
        public long ID_DeMuc { get; set; }

        [Column("NoiDung_CauHoi")]
        public string NoiDung { get; set; }
            
        [Column ("CapDo")]
        public int CapDo { get; set; }

        [Column("TrangThaiTron_CauHoi")]
        public bool TrThaiTron { get; set; }

        [Column("HT_CauHoi")]
        public bool HienThi { get; set; }

        [Column("Xoa_CauHoi")]
        public bool Xoa { get; set; }

        [Column("Diem_CauHoi")]
        public double Diem { get; set; }

        [Column("NguoiTao_CauHoi")]
        public string NguoiTao { get; set; }

        [Column("NgayTao_CauHoi")]
        public DateTime NgayTao { get; set; }

        [Column("NguoiCN_CauHoi")]
        public string NguoiCN { get; set; }

        [Column("NgayCN_CauHoi")]
        public DateTime NgayCN { get; set; }

        [Column("Khac_CH")]
        public string Khac { get; set; }

        [ForeignKey("ID_LoaiCH")]
        public virtual Loai_CH Loai_CH { get; set; }

        [ForeignKey("ID_DeMuc")]
        public virtual DeMuc DeMuc { get; set; }
    }
}
