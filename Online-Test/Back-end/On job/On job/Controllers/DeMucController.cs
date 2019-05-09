using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Onjob.Models;
using static Microsoft.AspNetCore.Hosting.Internal.HostingApplication;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace Onjob.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    
    public class DeMucController : ControllerBase
    {
        private readonly OnJobContext _context;
        public DeMucController(OnJobContext context) {
            _context = context;
        }
        // GET: api/<controller>
        [HttpGet]
        public ActionResult<List<DeMuc>> Get()
        {
            
            return _context.DeMucs.Where(x=>x.Xoa==false).Include(x => x.MonHoc).ToList();
        }

        // GET api/<controller>/5
        [HttpGet("{id}")]
        public ActionResult<DeMuc> Get(long id)
        {
            var dm = _context.DeMucs.Find(id);
            if (dm == null)
            {
                return NoContent();
            }
            return dm;
        }

        // POST api/<controller>
        [HttpPost]
        public ActionResult<DeMuc> create(DeMuc deMuc)
        {
            string a = DateTime.Now.ToString("yyyyMMddhh:mm:ss");
            string fag = a.Replace(" ", "");
            string b = a.Replace("/", "");
            string c = b.Replace(":", "");
            long kq = long.Parse(c);
            deMuc.ID = kq;
            deMuc.HienThi = true;
            deMuc.Xoa = false;
            deMuc.NgayTao = DateTime.Now;
            deMuc.NguoiCN = deMuc.NguoiTao;
            deMuc.NgayCN = deMuc.NgayTao;
            _context.DeMucs.Add(deMuc);
            _context.SaveChanges();
            return deMuc;
        }

        // PUT api/<controller>/5
        [HttpPut("{id}")]
        public IActionResult update(long id, DeMuc deMuc)
        {
            var dm = _context.DeMucs.Find(id);
            if(dm == null)
            {
                return NoContent();
            }
            dm.ID_MonHoc = deMuc.ID_MonHoc;
            dm.Ma = deMuc.Ma;
            dm.NgayCN = DateTime.Now;
            dm.NguoiCN = deMuc.NguoiCN;
            dm.HienThi = deMuc.HienThi;
            dm.Ten = deMuc.Ten;
            dm.Khac = dm.Khac;

            _context.DeMucs.Update(dm);
            _context.SaveChanges();
            return NoContent();
        }

        // DELETE api/<controller>/5
        [HttpDelete("{id}")]
        public IActionResult Delete(long id)
        {
            var dm = _context.DeMucs.Find(id);
            if (dm == null)
            {
                return NotFound();
            }
            dm.Xoa = true;
            _context.DeMucs.Update(dm);
            _context.SaveChanges();
            return NoContent();
        }
    }
}
