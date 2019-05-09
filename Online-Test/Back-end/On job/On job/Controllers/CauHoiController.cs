using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Onjob.Models;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace Onjob.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class CauHoiController : ControllerBase
    {
        private readonly OnJobContext _context;
        public CauHoiController(OnJobContext context)
        {
            _context = context;
        }
        // GET: api/MonHoc
        [HttpGet]
        public ActionResult<List<CauHoi>> Get()
        {

            return _context.CauHois.Where(x => x.Xoa == false).Include(x=>x.DeMuc).ToList();
        }

        // GET api/<controller>/5
        [HttpGet("{id}")]
        public ActionResult<CauHoi> Get(long id)
        {
            var ch = _context.CauHois.Find(id);
            if (ch == null)
            {
                return NoContent();
            }
            return ch;
        }

        // POST api/<controller>
        [HttpPost]
        public IActionResult Create(CauHoi cauHoi)
        {
            string a = DateTime.Now.ToString("yyyyMMddhh:mm:ss");
            string fag = a.Replace(" ", "");
            string b = a.Replace("/", "");
            string c = b.Replace(":", "");
            long kq = long.Parse(c);
            cauHoi.ID = kq;
            cauHoi.Xoa = false;
            cauHoi.HienThi = true;
            cauHoi.NgayTao = DateTime.Now;
            cauHoi.NguoiCN = cauHoi.NguoiTao;
            cauHoi.NgayCN = cauHoi.NgayTao;
            _context.CauHois.Add(cauHoi);
            _context.SaveChanges();
            return CreatedAtRoute("Get", new { id = cauHoi.ID }, cauHoi);
        }

        // PUT api/<controller>/5
        [HttpPut("{id}")]
        public IActionResult Update(long id, CauHoi chm)
        {
            var ch = _context.CauHois.Find(id);
            if (ch == null)
            {
                return NoContent();
            }
            ch = chm;
            ch.NgayCN = DateTime.Now;

            _context.CauHois.Update(ch);
            _context.SaveChanges();
            return NoContent();
        }

        // DELETE api/<controller>/5
        [HttpDelete("{id}")]
        public IActionResult Delete(long id)
        {
            var ch = _context.CauHois.Find(id);
            if (ch == null)
            {
                return NotFound();
            }
            ch.Xoa = true;
            _context.CauHois.Update(ch);
            _context.SaveChanges();
            return NoContent();
        }
    }
}
