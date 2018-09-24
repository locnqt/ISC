using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace TodoAPI.Models.Responses
{
    public class TodoResponse
    {
        public long Id { get; set; }
        public string Name { get; set; }
        public bool IsComplete { get; set; }
        public long TYPE_ID { get; set; }
        public string TypeName { get; set; }
    }
}
