using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace Simple_sell.Models
{
    [Table("Departments")]
    public class Department
    {
        [Key]
        public int DEP_ID { get; set; }
        [Column("DEP_NAME")]
        public String Name { get; set; }
}
}
