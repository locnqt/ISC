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
    [ApiController]
    public class Loai_CHController : ControllerBase
    {
        private readonly OnJobContext _context;
        public Loai_CHController(OnJobContext context)
        {
            _context = context;
        }
        // GET: api/<controller>
        [HttpGet]
        public ActionResult<List<Loai_CH>> Get()
        {
            return _context.Loai_CHes.Where(x=>x.Xoa==false).ToList();
        }

        // GET api/<controller>/5
        [HttpGet("{id}")]
        public ActionResult<Loai_CH> Get(long id)
        {
            var dm = _context.Loai_CHes.Find(id);
            if (dm == null)
            {
                return NoContent();
            }
            return dm;
        }

        // POST api/<controller>
        [HttpPost]
        public IActionResult create(Loai_CH loai_CH)
        {
            string a = DateTime.Now.ToString("yyyyMMddhh:mm:ss");
            string fag = a.Replace(" ", "");
            string b = a.Replace("/", "");
            string c = b.Replace(":", "");
            long kq = long.Parse(c);
            loai_CH.ID = kq;
            loai_CH.HienThi = true;
            _context.Loai_CHes.Add(loai_CH);
            _context.SaveChanges();
            return CreatedAtRoute("Get", new { id = loai_CH.ID }, loai_CH);
        }

        // PUT api/<controller>/5
        [HttpPut("{id}")]
        public IActionResult update(long id, Loai_CH loai_CH)
        {
            var loai = _context.Loai_CHes.Find(id);
            if (loai == null)
            {
                return NoContent();
            }
            loai.TenLoai = loai_CH.TenLoai;
            loai.Xoa = false;
            loai.HienThi = loai_CH.HienThi;
            _context.Loai_CHes.Update(loai);
            _context.SaveChanges();
            return NoContent();
        }

        // DELETE api/<controller>/5
        [HttpDelete("{id}")]
        public IActionResult Delete(long id)
        {
            var loai = _context.Loai_CHes.Find(id);
            if (loai == null)
            {
                return NotFound();
            }
            loai.Xoa = true;
            _context.Loai_CHes.Update(loai);
            _context.SaveChanges();
            return NoContent();
        }
    }
}
