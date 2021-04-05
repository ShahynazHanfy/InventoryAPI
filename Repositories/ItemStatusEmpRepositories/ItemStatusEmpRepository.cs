using InventoryAPI.DTO;
using InventoryAPI.Models;
using InventoryAPI.Repositories.ItemStatusEmpRepositories;
using InventoryAPI.Repositories;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace InventoryAPI.Repositories.ItemStatusEmpRepositories
{
    public class ItemStatusEmpRepository : IItemStatusEmpRepository
    {
        private readonly ApplicationDbContext _context;

        public ItemStatusEmpRepository(ApplicationDbContext context)
        {
            _context = context;
        }
        public void Add(ItemStatusEmpDTO itemStatusEmpDTO)
        {
            {
                var itemStatusEmp = new ItemStatusEmp();
                //itemStatusEmp.Employee.EmployeeName = itemStatusEmpDTO.EmployeeName;
                itemStatusEmp.EmployeeId = itemStatusEmpDTO.EmployeeId;
                itemStatusEmp.Description= itemStatusEmpDTO.Description;
                itemStatusEmp.Id = itemStatusEmpDTO.Id;
                itemStatusEmp.ItemDate = itemStatusEmpDTO.ItemDate;
                itemStatusEmp.ItemId = itemStatusEmpDTO.ItemId;
                //itemStatusEmp.Item.ItemName = itemStatusEmpDTO.ItemName;
                itemStatusEmp.UserId = itemStatusEmpDTO.UserId;
                //itemStatusEmp.User.UserName = itemStatusEmpDTO.UserName;
                itemStatusEmp.StatusId = itemStatusEmpDTO.StatusId;
                //itemStatusEmp.Status.StatusName = itemStatusEmpDTO.StatusName;
                _context.ItemStatusEmps.Add(itemStatusEmp);
            }
        }

        public void Delete(int id)
        {
            throw new NotImplementedException();
        }

     

        public ItemStatusEmp Find(int id)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<ItemStatusEmpDTO> GetAll()
        {
            var itemStatusEmp = _context.ItemStatusEmps.Include(i => i.Employee)
                .Include(i => i.Item).Include(i=>i.User).Include(i => i.Status).Select(item => new ItemStatusEmpDTO
            {
                Description=item.Description,
                ItemDate=item.ItemDate,
                EmployeeId=item.EmployeeId,
                EmployeeName=item.Employee.EmployeeName,
                ItemId=item.ItemId,
                ItemName=item.Item.ItemName,
                StatusId=item.StatusId,
                StatusName=item.Status.StatusName,
                UserId=item.UserId,
                UserName=item.User.UserName
            }).ToList();
            return itemStatusEmp;
        }

        public ItemStatusEmpDTO GetById(int id)
        {
            throw new NotImplementedException();
        }

        public void Save()
        {
            _context.SaveChanges();
        }

        public void Update(ItemStatusEmpDTO itemStatusEmpDTO)
        {
            throw new NotImplementedException();
        }
        private bool disposed = false;
        protected virtual void Dispose(bool disposing)
        {
            if (!this.disposed)
            {
                if (disposing)
                {
                    _context.Dispose();
                }
            }
            this.disposed = true;
        }
        public void Dispose()
        {
            Dispose(true);
            GC.SuppressFinalize(this);
        }

        public List<ItemStatusEmpDTO> GetAllStatusesByItemId(int ItemId)
        {
            var itemStatuses = _context.ItemStatusEmps.Where(r => r.ItemId == ItemId).Include(r => r.Status).Include(r => r.Employee).Include(r => r.User)
               .Include(r => r.Item).Select(r => new ItemStatusEmpDTO
               {
                   EmployeeId = r.EmployeeId,
                   EmployeeName = r.Employee.EmployeeName,
                   Description = r.Description,
                   Id = r.Id,
                   ItemDate = r.ItemDate,
                   ItemId = r.ItemId,
                   ItemName = r.Item.ItemName,
                   StatusName = r.Status.StatusName,
                   StatusId = r.StatusId,
                   UserId = r.UserId,
                   UserName = r.User.UserName,
                   Photo = r.Item.Photo
               }).ToList();
            return itemStatuses;
        }
    }
}
