using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace Onjob.Models
{
    [Table("ChiTiet_DeThi")]
    public class ChiTiet_DeThi
    {
        [Key]
        [Column("ID_CTDT")]
        public long ID_CTDT { get; set; }

        [Column("ID_DE")]
        public long ID_DE { get; set; }

        [Column("ID_CH")]
        public long ID_CH { get; set; }

        [Column("ThuTu_DeThi")]
        public int ThuTu
        {
            get { return ThuTu; }
            set { if (ThuTu <= 0) ThuTu = 1; }
        }

        [Column("HT_ChiTiet_DT")]
        public bool HienThi { get; set; }

        [Column("Xoa_CTDT")]
        public bool Xoa { get; set; }

        [Column("NguoiTao_CTDT")]
        public string NguoiTao { get; set; }

        [Column("NgayTao_CTDT")]
        public DateTime NgayTao { get; set; }

        [Column("NguoiCN_CTDT")]
        public string NguoiCN { get; set; }

        [Column("NgayCN_CTDT")]
        public DateTime NgayCN { get; set; }

        [Column("Khac_ChiTiet_DeThi")]
        public string Khac { get; set; }

        [ForeignKey("ID_DE")]
        public virtual DanhSach_DeThi DsDeThi { get; set; }

        [ForeignKey("ID_CH")]
        public virtual CauHoi CauHoi { get; set; }
    }
}
