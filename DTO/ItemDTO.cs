using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace InventoryAPI.DTO
{
    public class ItemDTO
    {
        public int Id { get; set; }
        public string ItemName { get; set; }
        public int SubGroupId { get; set; }
        public string SubGroupName { get; set; }
    }
}
