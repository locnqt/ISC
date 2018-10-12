using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace NguyenQuangTuanLoc_Final.Models
{
    [Table("TITLES")]
    public class Title
    {
        [Key]
        [Column("TIT_ID")]
        public int TitId { get; set; }
        [Column("TITLE")]
        public string Titlee { get; set; }
        [Column("PUBLISHINGYEAR")]
        public int Pub_year { get; set; }
        [Column("PUBLISHER")]
        public string Publisher { get; set; }
        [Column("AUTHOR")]
        public string Auther { get; set; }
        [Column("DESCRIPTION")]
        public string Descript { get; set; }
        [Column("CREATEDDATE")]
        public DateTime CreateDay { get; set; }
        [Column("CREATEDBY")]
        public int CreateBy { get; set; }
    }
}
