using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace Simple_sell.Models
{
    [Table("Customers")]
    public class Customer
    {
        [Key]
        public int CUS_ID { get; set; }
        [Column("CUS_NAME")]
        public String Name { get; set; }
        [Column("CUS_ADDRESS")]
        public String Address { get; set; }
        [Column("CUS_CITY")]
        public String City { get; set; }
        [Column("CUS_STATE")]
        public String State { get; set; }
        [Column("CUS_ZIP")]
        public String Zip { get; set; }
        [Column("CUS_PHONE")]
        public String Phone { get; set; }
    }
}
