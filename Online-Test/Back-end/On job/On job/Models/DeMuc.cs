using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace Onjob.Models
{
    [Table("DeMuc")]
    public class DeMuc
    {
        [Key]
        [Column("ID_DeMuc")]
        public long ID { get; set; }

        [Column("ID_MonHoc")]
        public long ID_MonHoc { get; set; }

        [Column("Ma_DeMuc")]
        public string Ma
        { get;set;
        }

        [Column("Ten_DeMuc")]
        public string Ten
        {get;set;
        }

        [Column("HT_DeMuc")]
        public bool HienThi { get; set; }

        [Column("Xoa_DeMuc")]
        public bool Xoa { get; set; }

        [Column("NguoiTao_DM")]
        public string NguoiTao {
            get;set;
        }

        [Column("NgayTao_DM")]
        public DateTime NgayTao { get; set; }

        [Column("NguoiCN_DM")]
        public string NguoiCN {
            get;set;
        }

        [Column("NgayCN_DM")]
        public DateTime NgayCN { get; set; }

        [Column("Khac_DeMuc")]
        public string Khac
        {
            get;set;
        }
        [ForeignKey("ID_MonHoc")]
        public virtual MonHoc MonHoc { get; set; }
    }
}
