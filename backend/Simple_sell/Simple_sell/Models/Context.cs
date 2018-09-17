using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Simple_sell.Models
{
    public class Context :DbContext
    {
        public Context() { }
        protected override void OnConfiguring(DbContextOptionsBuilder optionBuilder) { }
        protected override void OnModelCreating(ModelBuilder modelBuilder) { }
        public DbSet<Customer> Customers { get; set; }
        public DbSet<Employee> Employees { get; set; }
        public DbSet<Department> Departments { get; set; }
        public DbSet<Item> Items { get; set; }
        public DbSet<Sale_Order> Sale_Orders { get; set; }
        public DbSet<Sale_Order_Item> Sale_Order_Items { get; set; }
    }
}
