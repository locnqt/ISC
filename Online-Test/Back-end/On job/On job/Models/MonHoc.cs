using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace Onjob.Models
{
    [Table("MonHoc")]
    public class MonHoc
    {
        [Column("ID_MonHoc")]
        public long ID { get; set; }

        [Column("Ma_MonHoc")]
        public string Ma
        {
            get;set;
        }

        [Column("TenMonHoc")]
        public string Ten
        {
            get;set;
        }

        [Column("HT_MonHoc")]
        public bool HienThi { get; set; }

        [Column("Xoa_MonHoc")]
        public bool Xoa { get; set; }

        [Column("NguoiTao_MonHoc")]
        public string NguoiTao
        {
            get; set;
        }

        [Column("NgayTao_MonHoc")]
        public DateTime NgayTao { get; set; }

        [Column("NguoiCN_MonHoc")]
        public string NguoiCN
        {
            get; set;
        }

        [Column("NgayCN_MonHoc")]
        public DateTime NgayCN { get; set; }

        [Column("Khac_MonHoc")]
        public string Khac { get; set; }
    }
}
