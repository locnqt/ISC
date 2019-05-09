using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace Onjob.Models
{
    [Table("PhanQuyen")]
    public class PhanQuyen
    {
        [Key]
        [Column("ID_PhanQuyen")]
        public long ID { get; set; }

        [Column("ID_ManHinh")]
        public long ID_ManHinh { get; set; }

        [Column("ID_CQ")]
        public long ID_CQ { get; set; }

        [Column("CoQuyen")]
        public bool CoQuyen { get; set; }

        [Column("ChiDoc")]
        public bool read { get; set; }

        [Column("Them")]
        public bool add { get; set; }

        [Column("Sua")]
        public bool edit { get; set; }

        [Column("Xoa")]
        public bool delete { get; set; }

        [Column("HT_PQ")]
        public bool HienThi { get; set; }
        [Column("Xoa_PQ")]
        public bool Xoa { get; set; }

        [Column("NgayBD_PQ")]
        public DateTime NgayBD { get; set; }

        [Column("NgayKT_PQ")]
        public DateTime NgayKT { get; set; }

        [Column("NgayKT_TT")]
        public DateTime NgayKT_TT { get; set; }

        [Column("NguoiTao_PQ")]
        public string NguoiTao {
            get;set;
        }

        [Column("NgayTao_PQ")]
        public DateTime NgayTao { get; set; }

        [Column("NguoiCN_PQ")]
        public string NguoiCN
        {
            get;set;
        }

        [Column("NgayCN_PQ")]
        public DateTime NgayCN { get; set; }

        [Column("Khac_PQ")]
        public string Khac
        {
            get;set;
        }

        [ForeignKey("ID_ManHinh")]
        public virtual ManHinh ManHinh { get; set; }
        [ForeignKey("ID_CQ")]
        public virtual CumQuyen CumQuyen { get; set; }

    }
}
