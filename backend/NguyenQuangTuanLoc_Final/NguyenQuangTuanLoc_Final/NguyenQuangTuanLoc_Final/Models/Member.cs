using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace NguyenQuangTuanLoc_Final.Models
{
    [Table("MEMBERS")]
    public class Member
    {
        [Key]
        [Column("MEM_ID")]
        public int MemId { get; set; }
        [Column("ACCOUNT")]
        public string Account { get; set; }
        [Column("PASSWORD")]
        public string PassWord { get; set; }
        [Column("FULLNAME")]
        public string Name { get; set; }
        [Column("GENDER")]
        public bool Gender { get; set; }
        [Column("EMAIL")]
        public string Email { get; set; }
        [Column("PHONE")]
        public string Phone { get; set; }
        [Column("CREATEDDATE")]
        public DateTime CreateDay { get; set; }
        [Column("CREATEDBY")]
        public int CreateBy { get; set; }
    }
}
