using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace NguyenQuangTuanLoc_Final.Models
{
    [Table("CHECKOUTS")]
    public class Checkout
    {
        [Key]
        [Column("CHK_ID")]
        public long Check_Id { get; set; }
        [Column("CREATEDDATE")]
        public DateTime CreateDay { get; set; }
        [Column("CREATEDBY")]
        public int CreateBy { get; set; }

        [Column("LIB_ID")]
        public int LIBID { get; set; }
        [ForeignKey("LIBID")]
        public virtual Librarian Librarian { get; set; }

        [Column("MEM_ID")]
        public int MEMID { get; set; }
        [ForeignKey("MEMID")]
        public virtual Member Member { get; set; }
    }
}
