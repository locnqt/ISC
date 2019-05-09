using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Onjob.Models.Respones
{
    public class LoginRespone
    {
        public long Id { get; set; }
        public long Id_Cq { get; set; }
        public string FullName { get; set; }
        public string token { get; set; }

    }
}
