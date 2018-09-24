﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace TodoAPI.Models
{
    [Table("Roles")]
    public class Role
    {
        [Key]
        [Column("ROL_ID")]
        public long RoleId { get; set; }
        [Column("Name")]
        public string Name { get; set; }
    }
}
