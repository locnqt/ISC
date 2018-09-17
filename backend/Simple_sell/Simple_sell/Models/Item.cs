using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace Simple_sell.Models
{
    [Table("Items")]
    public class Item
    {
        [Key]
        public int ITE_ID { get; set; }
        [Column("ITE_DESCRIPTION")]
        public String descript { get; set; }
        [Column("ITE_PRICE")]
        public decimal price { get; set; }
    }
}
