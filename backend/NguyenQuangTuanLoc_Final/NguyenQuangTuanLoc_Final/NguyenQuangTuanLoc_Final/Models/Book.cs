using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace NguyenQuangTuanLoc_Final.Models
{
    [Table("BOOKS")]
    public class Book
    {
        [Key]
        [Column("BOO_ID")]
        public long BookId { get; set; }
        [Column("BARCODE")]
        public string Barcode { get; set; }
        [Column("STATUS")]
        public int Status { get; set; }
        [Column("CREATEDDATE")]
        public DateTime CreateDay { get; set; }
        [Column("CREATEDBY")]
        public int CreateBy { get; set; }

        [Column("TIT_ID")]
        public int TitId { get; set; }
        [ForeignKey("TitId")]
        public virtual Title Title { get; set; }
    }
}
