using InventoryAPI.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace InventoryAPI.Repositories.StatusRepositories
{
    public interface IStatusRepository
    {
        IEnumerable<Status> GetAll();
        Status GetById(int id);
        Status Find(int id);
        void Add(Status status);
        void Update(Status status);
        void Delete(int id);
        void Save();
    
}
}
