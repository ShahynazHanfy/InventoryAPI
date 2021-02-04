using InventoryAPI.DTO;
using InventoryAPI.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace InventoryAPI.Repositories.SubGroupRepositories
{
    public interface ISubGroupRepository
    {
        IEnumerable<SubGroupDTO> GetAll();
        SubGroupDTO GetById(int id);
        SubGroup Find(int id);
        void Add(SubGroupDTO subGroup);
        void Update(SubGroupDTO subGroup);
        void Delete(int id);
        void Save();
    }
}
