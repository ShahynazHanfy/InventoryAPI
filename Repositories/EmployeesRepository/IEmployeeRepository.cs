using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using InventoryAPI.DTO;
using InventoryAPI.Models;

namespace InventoryAPI.Repositories.EmployeesRepository
{
   public interface IEmployeeRepository : IDisposable
    {
        IEnumerable<EmployeeDTO> GetAll();
        EmployeeDTO GetById(int id);
        Employee Find(int id);
        void Add(EmployeeDTO employeeDTO);
        void Update(EmployeeDTO employeeDTO);
        void Delete(int id);
        void Save();
    }
}
