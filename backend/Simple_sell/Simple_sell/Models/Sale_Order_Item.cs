using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace Simple_sell.Models
{
    [Table("Sale_Order_Items")]
    public class Sale_Order_Item
    {
        [Key]
        public int SALI_ID { get; set; }
        [Column("SALI_NUMBER")]
        [ForeignKey("SAL_NUMBER")]
        public int SalNum { get; set; }
        [Column("ITE_ID")]
        [ForeignKey("ITE_ID")]
        public int IteNum { get; set; }
        [Column("SALI_QUANTITY")]
        public int Quantity { get; set; }
        [Column("SALI_PRICE")]
        public decimal price { get; set; }
    }
}
