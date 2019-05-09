using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace Onjob.Models
{
    [Table("Loai_CH")]
    public class Loai_CH
    {
        [Key]
        [Column("ID_LoaiCH")]
        public long ID{ get; set; }

        [Column("MaLoai_CH")]
        public string MaLoai {
            get;set;
        }

        [Column("TenLoai_CH")]
        public string TenLoai
        {
            get; set;
        }

        [Column("HT_Loai")]
        public bool HienThi { get; set; }

        [Column("Xoa_LCH")]
        public bool Xoa { get; set; }

        [Column("Khac_LCH")]
        public string Khac
        {
            get; set;
        }
    }
}
