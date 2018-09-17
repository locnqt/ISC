using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace Simple_sell.Models
{
    [Table("Employees")]
    public class Employee
    {
        [Key]
        public int EMP_ID { get; set; }
        [Column("EMP_EMP_ID")]
        [ForeignKey("EMP_EMP_ID")]
        public int E2ID { get; set; }
        [Column("DEP_ID")]
        [ForeignKey("DEP_ID")]
        public int DepId { get; set; }
        [Column("EMP_CODE")]
        public String Code { get; set; }
        [Column("EMP_NAME")]
        public String Name{ get; set; }
        [Column("EMP_PHONE")]
        public String Phone{ get; set; }
        [Column("EMP_EMAIL")]
        public String Email { get; set; }
        [Column("EMP_POSITION")]
        public String Position { get; set; }
    }
}
