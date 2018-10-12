using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace NguyenQuangTuanLoc_Final.Models
{
    [Table("CHECKOUTDETAILS")]
    public class CheckoutDetail
    {
        [Key]
        [Column("CHKD_ID")]
        public long CheckDetailID { get; set; }
        [Column("CHECKOUTDATE")]
        public DateTime CheckOutDate { get; set; }
        [Column("CHECKOUTBY")]
        public int CheckOutBy { get; set; }
        [Column("CHECKINDATE")]
        public DateTime CheckInDate { get; set; }
        [Column("CHECKINBY")]
        public int CheckInBy { get; set; }

        [Column("CHK_ID")]
        public long Checkid { get; set; }
        [ForeignKey("Checkid")]
        public virtual Checkout Checkout { get; set; }

        [Column("BOO_ID")]
        public long Bookid { get; set; }
        [ForeignKey("Bookid")]
        public virtual Book Book { get; set; }
    }
}
