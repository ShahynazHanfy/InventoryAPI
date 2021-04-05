using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using InventoryAPI.Models;
using InventoryAPI.DTO;


namespace InventoryAPI.Repositories.ItemRepositories
{
    public interface IItemRepository
    {
        IEnumerable<ItemDTO> GetAll();
        ItemDTO GetById(int id);
        
        Item Find(int id);
        int Add(Item item);
        void Update(ItemDTO item);
        void Delete(int id);
        void Save();
    }
}
