using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace InventoryAPI.DTO
{
    public class SubGroupDTO
    {
        public int Id { get; set; }
        public string SubGroupName { get; set; }
        public string GroupName { get; set; }
        public bool Activation { get; set; }
        public int GroupId { get; set; }
    }
}
