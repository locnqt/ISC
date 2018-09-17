using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace Simple_sell.Models
{
    [Table("Sale_Orders")]
    public class Sale_Order
    {
        [Key]
        public long SAL_NUMBER { get; set; }
        [Column("EMP_ID")]
        [ForeignKey("EMP_ID")]
        public int EmpId { get; set; }
        [Column("CUS_ID")]
        [ForeignKey("CUS_ID")]
        public int CusId { get; set; }
        [Column("SAL_DATE")]
        public DateTime date { get; set; }
        [Column("SAL_TAX")]
        public float tax { get; set; }
    }
}
