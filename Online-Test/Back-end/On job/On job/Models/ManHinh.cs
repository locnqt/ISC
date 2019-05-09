using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace Onjob.Models
{
    [Table("ManHinh")]
    public class ManHinh
    {
        [Key]
        [Column("ID_ManHinh")]
        public long ID { get; set; }

        [Column("MaManHinh")]
        public string Ma { get; set; }

        [Column("TenManHinh")]
        public string Ten { get; set; }

        [Column("HT_ManHinh")]
        public bool HienThi { get; set; }

        [Column("Xoa_ManHinh")]
        public bool Xoa { get; set; }

        [Column("MoTaManHinh")]
        public string MoTa { get; set; }

        [Column("URL")]
        public string URL { get; set; }
        [Column("Khac_ManHinh")]
        public string Khac { get; set; }

    }
    }
