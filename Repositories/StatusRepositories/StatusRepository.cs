using InventoryAPI.Models;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace InventoryAPI.Repositories.StatusRepositories
{
    public class StatusRepository : IStatusRepository
    {
        private readonly ApplicationDbContext _context;
        public StatusRepository(ApplicationDbContext context)
        {
            _context = context;
        }
        public void Add(Status status)
        {
            var statusObj = new Status();
            statusObj.Id = status.Id;
            statusObj.StatusName = status.StatusName;
            _context.Statuses.Add(statusObj);
        }

        public void Delete(int id)
        {
            Status status = Find(id);
            _context.Statuses.Remove(status);
        }

        public Status Find(int id)
        {
            return _context.Statuses.Find(id);
        }

        public IEnumerable<Status> GetAll()
        {
            var statuses = _context.Statuses.Select(e => new Status
            {
                StatusName = e.StatusName,
                Id = e.Id
            }).ToList();
            return statuses;
        }

        public Status GetById(int id)
        {
            var statusObj = _context.Statuses.FirstOrDefault(e => e.Id == id);
            var status = new Status
            {
                Id = statusObj.Id,
                StatusName = statusObj.StatusName
            };
            return status;
        }

        public void Save()
        {
            _context.SaveChanges();
        }

        public void Update(Status status)
        {
            var statusObj = new Status();
            statusObj.Id = status.Id;
            statusObj.StatusName = status.StatusName;
            _context.Entry(statusObj).State = EntityState.Modified;
        }
    }
}
