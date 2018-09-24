using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace TodoAPI.Models
{
    [Table("Users")]
    public class User
    {
        [Key]
        [Column("USE_ID")]
        public long UserId { get; set; }
        [Column("UserName")]
        public string UserName { get; set; }
        [Column("PassWord")]
        public string Pass { get; set; }
        [Column("FullName")]
        public string Name { get; set; }
        [Column("Email")]
        public string Email { get; set; }
        [Column("Islocked")]
        public bool Islocked { get; set; }
        [Column("IsDeleted")]
        public bool IsDeleted { get; set; }

        [Column("ROL_ID")]
        public long RolId { get; set; }
        [ForeignKey("RolId")]
        public virtual Role Role { get; set; }
    }
}
