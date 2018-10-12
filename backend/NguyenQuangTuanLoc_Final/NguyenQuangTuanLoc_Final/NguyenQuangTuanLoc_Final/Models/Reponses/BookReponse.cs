using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace NguyenQuangTuanLoc_Final.Models.Reponses
{
    public class BookReponse
    {
        public long Book_ID { get; set; }
        public int Title_ID { get; set; }
        public string Book_title { get; set; }
        public string Author { get; set; }
        public string Publisher { get; set; }
        public int Available { get; set; }
    }
}
