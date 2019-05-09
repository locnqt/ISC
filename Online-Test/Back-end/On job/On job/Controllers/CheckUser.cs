using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Onjob.Models;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace Onjob.Controllers
{
    [Route("api/[controller]")]
    public class CheckUser : ControllerBase
    {
        private readonly OnJobContext _context;
        public GiaoVien giaovien;
        public CheckUser (OnJobContext context)
        {
            _context = context;
        }
        // GET: api/<controller>
        [HttpGet]
        public ActionResult<List<GiaoVien>> Get()
        {
            return _context.GiaoViens.ToList();
        }

        // POST api/<controller>
        [HttpPost]
        public void Post(string username)
        {
            
        }

        // PUT api/<controller>/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody]string value)
        {
        }

        // DELETE api/<controller>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
