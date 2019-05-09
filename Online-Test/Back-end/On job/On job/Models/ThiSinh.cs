using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace Onjob.Models
{
    [Table("ThiSinh")]
    public class ThiSinh
    {
        [Key]
        [Column("ID_TK")]
        public long ID { get; set; }

        [Column("MADN_TS")]
        public string Ma { get; set; }

        [Column("Ho_ThiSinh")]
        public string Ho { get; set; }

        [Column("Ten_ThiSinh")]
        public string Ten { get; set; }

        [Column("MatKhau_ThiSinh")]
        public string MatKhau { get; set; }

        [Column("GioiTinh_ThiSinh")]
        public string GioiTinh { get; set; }
        
        [Column("Email_ThiSinh")]
        public string Email { get; set; }

        [Column("DienThoai_ThiSinh")]
        public string DienThoai { get; set; }

        [Column("DiaChi_ThiSinh")]
        public string DiaChi { get; set; }

        [Column("NgaySinh_ThiSinh")]
        public DateTime NgaySinh { get; set; }

        [Column("HT_ThiSinh")]
        public bool HienThi { get;set;}

        [Column("Xoa_ThiSinh")]
        public bool Xoa { get; set; }

        [Column("NguoiTao_ThiSinh")]
        public string NguoiTao { get; set; }

        [Column("NgayTao_ThiSinh")]
        public DateTime NgayTao { get; set; }

        [Column("NguoiCN_ThiSinh")]
        public string NguoiCN { get; set; }

        [Column("NgayCN_ThiSinh")]
        public DateTime NgayCN { get; set; }

        [Column("Khac_ThiSinh")]
        public string Khac_ThiSinh { get; set; }
    }
}
