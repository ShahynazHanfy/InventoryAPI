using InventoryAPI.DTO;
using InventoryAPI.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace InventoryAPI.Repositories.GroupRepositories
{
    public interface IGroupRepository
    {
        IEnumerable<GroupDTO> GetAll();
        GroupDTO GetById(int id);
        Group Find(int id);
        void Add(GroupDTO group);
        void Update(GroupDTO group);
        void Delete(int id);
        void Save();
    }
}
