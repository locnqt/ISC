using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace NguyenQuangTuanLoc_Final.Models
{
    public class LibaryContext : DbContext
    {
        public LibaryContext(DbContextOptions<LibaryContext> options) : base(options) { }
        public DbSet<Member> Members { get; set; }
        public DbSet<Librarian> Librarians { get; set; }
        public DbSet<Title> Titles { get; set; }
        public DbSet<Book> Books { get; set; }
        public DbSet<Checkout> Checkouts { get; set; }
        public DbSet<CheckoutDetail> CheckoutDetails { get; set; }
    }
}
