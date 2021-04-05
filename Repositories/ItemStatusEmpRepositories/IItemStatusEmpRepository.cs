using InventoryAPI.DTO;
using InventoryAPI.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace InventoryAPI.Repositories.ItemStatusEmpRepositories
{
    public interface IItemStatusEmpRepository:IDisposable
    {
        IEnumerable<ItemStatusEmpDTO> GetAll();
        ItemStatusEmpDTO GetById(int id);
        List<ItemStatusEmpDTO> GetAllStatusesByItemId(int ItemId);
        ItemStatusEmp Find(int id);
        void Add(ItemStatusEmpDTO itemStatusEmpDTO);
        void Update(ItemStatusEmpDTO itemStatusEmpDTO);
        void Delete(int id);
        void Save();
    }
}
