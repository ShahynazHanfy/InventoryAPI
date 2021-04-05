using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace InventoryAPI.Models
{
    public class Item
    {
        [DatabaseGeneratedAttribute(DatabaseGeneratedOption.Identity)]
        public int Id { get; set; }
        public string SerialNumber { get; set; }
        public string Brand { get; set; }
        public string Bar_code { get; set; }
        public string Description { get; set; }
        public int Price { get; set; }
        public string ItemName { get; set; }
        public string Photo { get; set; }
        public int SubGroupId { get; set; }
        [ForeignKey("SubGroupId")]
        public virtual SubGroup SubGroup { get; set; }
    }
}
