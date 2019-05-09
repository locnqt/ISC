using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace Onjob.Models
{
    [Table("GiaoVien")]
    public class GiaoVien
    {
        [Key]
        [Column("ID_GV")]
        public long ID { get; set; }

        [Column("ID_CQ")]
        public long Id_Cq { get; set; }

        [Column("MADN_GV")]
        public string Ma {
            get;set;
        }

        [Column("Ho_GV")]
        public string Ho
        {
            get; set;
        }

        [Column("Ten_GV")]
        public string Ten {
            get; set;
        }

        [Column("MatKhau_GV")]
        public string MatKhau {
            get; set;
        }

        [Column("GioiTinh_GV")]
        public string GioiTinh {
            get; set;
        }

        [Column("Email_GV")]
        public string Email
        {
            get; set;
        }

        [Column("DienThoai_GV")]
        public string DienThoai
        {
            get; set;
        }

        [Column("DiaChi_GV")]
        public string DiaChi {
            get; set;
        }

        [Column("NgaySinh_GV")]
        public DateTime NgaySinh {
            get; set;
        }

        [Column("HT_GV")]
        public bool HienThi { get; set; }

        [Column("Xoa_GV")]
        public bool Xoa { get; set; }

        [Column("NguoiTao_GV")]
        public string NguoiTao
        {
            get; set;
        }

        [Column("NgayTao_GV")]
        public DateTime NgayTao {
            get; set;
        }

        [Column("NguoiCN_GV")]
        public string NguoiCN {
            get; set;
        }

        [Column("NgayCN_GV")]
        public DateTime NgayCN { get; set; }

        [Column("Khac_GV")]
        public string Khac_GV {
            get; set;
        }

        [ForeignKey("Id_Cq")]
        public virtual CumQuyen CumQuyen { get; set; }
    }
}
