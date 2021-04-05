using InventoryAPI.Models;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using InventoryAPI.DTO;

namespace InventoryAPI.Models
{
    public class ApplicationDbContext : IdentityDbContext<ApplicationUser>
    {
        public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options) : base(options)
        {

        }
        //ApplicationDbContext(InventoryAPI.Models)
        protected override void OnModelCreating(ModelBuilder builder)
        {
            base.OnModelCreating(builder);
        }
        public DbSet<Group> Groups { get; set; }
        public DbSet<SubGroup> SubGroups { get; set; }
        public DbSet<Item> Items { get; set; }
        public DbSet<ItemDocuments> ItemDocuments { get; set; }
        public DbSet<Status> Statuses { get; set; }
        public DbSet<ItemStatusEmp> ItemStatusEmps { get; set; }
        public DbSet<Employee> Employees { get; set; }


    }
}
