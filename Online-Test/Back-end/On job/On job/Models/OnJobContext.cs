using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Onjob.Models
{
    public class OnJobContext : DbContext
    {
        public OnJobContext(DbContextOptions<OnJobContext> options) : base(options)
        {

        }
        public DbSet<Baithi> Baithis { get; set; }
        public DbSet<CauHoi> CauHois { get; set; }
        public DbSet<ChiTiet_BaiThi> ChiTiet_BaiThis { get; set; }
        public DbSet<ChiTiet_DeThi> ChiTiet_DeThis { get; set; }
        public DbSet<DangKy> DangKies { get; set; }
        public DbSet<DanhSach_DeThi> DanhSach_DeThis { get; set; }
        public DbSet<DeMuc> DeMucs { get; set; }
        public DbSet<GiangDay> GiangDays { get; set; }
        public DbSet<GiaoVien> GiaoViens { get; set; }
        public DbSet<LichSu_CH> LichSu_CHes { get; set; }
        public DbSet<LichSu_LC> LichSu_LCs { get; set; }
        public DbSet<Loai_CH> Loai_CHes { get; set; }
        public DbSet<LuaChon> LuaChons { get; set; }
        public DbSet<ManHinh> ManHinhs { get; set; }
        public DbSet<MonHoc> MonHocs { get; set; }
        public DbSet<PhanQuyen> PhanQuyens { get; set; }
        public DbSet<ThiSinh> ThiSinhs { get; set; }
        public DbSet<CumQuyen> CumQuyens { get; set; }
    }
}