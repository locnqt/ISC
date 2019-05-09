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
    public class GiaoVienController : ControllerBase
    {
        private readonly OnJobContext _context;
        public GiaoVienController(OnJobContext context)
        {
            _context = context;
        }
        // GET: api/MonHoc
        [HttpGet]
        public ActionResult<List<GiaoVien>> Get()
        {
       
            return _context.GiaoViens.Where(x=>x.Xoa==false).Include(x=>x.CumQuyen).ToList();
        }

        // GET api/<controller>/5
        [HttpGet("{id}")]
        public ActionResult<GiaoVien> Get(long id)
        {
            var gv = _context.GiaoViens.Find(id);
            if (gv == null)
            {
                return NoContent();
            }
            return gv;
        }

        // POST api/<controller>
        [HttpPost]
        public ActionResult<GiaoVien> Create(GiaoVien giaoVien)
        {
            string a = DateTime.Now.ToString("yyyyMMddhh:mm:ss");
            string fag = a.Replace(" ", "");
            string b = a.Replace("/", "");
            string c = b.Replace(":", "");
            long kq = long.Parse(c);
            giaoVien.ID = kq;
            if (giaoVien.Id_Cq == 0) giaoVien.Id_Cq = 1;
            giaoVien.HienThi = true;
            giaoVien.Xoa = false;
            giaoVien.NgaySinh = new DateTime(giaoVien.NgaySinh.Year, giaoVien.NgaySinh.Month, giaoVien.NgaySinh.Day);
            giaoVien.NgayTao = DateTime.Now;
            giaoVien.NguoiCN = giaoVien.NguoiTao;
            giaoVien.NgayCN = giaoVien.NgayTao;
            _context.GiaoViens.Add(giaoVien);
            _context.SaveChanges();
            return giaoVien;
        }

        // PUT api/<controller>/5
        [HttpPut("{id}")]
        public IActionResult Update(long id,GiaoVien gvm)
        {
            var gv = _context.GiaoViens.Find(id);
            if (gv == null)
            {
                return NoContent();
            }
            gv.Ma = gvm.Ma;
            gv.Ho = gvm.Ho;
            gv.MatKhau = gvm.MatKhau;
            gv.GioiTinh = gvm.GioiTinh;
            gv.HienThi = gvm.HienThi;
            gv.Email = gvm.Email;
            gv.DiaChi = gvm.DiaChi;
            gv.DienThoai = gvm.DienThoai;
            gv.NgaySinh = gv.NgaySinh;
            gv.NguoiCN = gvm.NguoiCN;
            gv.NgayCN = DateTime.Now;
            gv.Khac_GV = gvm.Khac_GV;

            _context.GiaoViens.Update(gv);
            _context.SaveChanges();
            return NoContent();
        }

        // DELETE api/<controller>/5
        [HttpDelete("{id}")]
        public IActionResult Delete(long id)
        {
            var gv = _context.GiaoViens.Find(id);
            if (gv == null)
            {
                return NotFound();
            }
            gv.Xoa = true;
            _context.GiaoViens.Update(gv);
            _context.SaveChanges();
            return NoContent();
        }
    }
}
