using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace InventoryAPI.DTO
{
    public class ItemStatusEmpDTO
    {
        public int Id { get; set; }
        public DateTime ItemDate { get; set; }
        public string Description { get; set; }
        public int EmployeeId { get; set; }
        public string Photo { get; set; }
        public string EmployeeName { get; set; }
        public int StatusId { get; set; }
        public string StatusName { get; set; }
        public int ItemId { get; set; }
        public string ItemName { get; set; }
        public string UserId { get; set; }
        public string UserName { get; set; }
    }
}
