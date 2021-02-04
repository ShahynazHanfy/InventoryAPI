using InventoryAPI.DTO;
using InventoryAPI.Models;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace InventoryAPI.Repositories.GroupRepositories
{
    public class GroupRepository : IGroupRepository
    {
        private readonly ApplicationDbContext _context;
        public GroupRepository(ApplicationDbContext context)
        {
            _context = context;
        }
        public void Add(GroupDTO group)
        {
            var groupObj = new Group();
            groupObj.Id = group.Id;
            groupObj.GroupName = group.GroupName;
            _context.Groups.Add(groupObj);
        }

        public void Delete(int id)
        {
            Group group = Find(id);
            _context.Groups.Remove(group);
        }

        public Group Find(int id)
        {
            return _context.Groups.Find(id);
        }

        public IEnumerable<GroupDTO> GetAll()
        {
            var groups = _context.Groups.Select(e => new GroupDTO
            {
                GroupName = e.GroupName,
                Id = e.Id
            }).ToList();
            return groups;
        }

        public GroupDTO GetById(int id)
        {
            var groupObj = _context.Groups.FirstOrDefault(e => e.Id == id);
            var groupDTO = new GroupDTO
            {
                Id = groupObj.Id,
                GroupName = groupObj.GroupName
            };
            return groupDTO;
        }

        public void Save()
        {
            _context.SaveChanges();
        }

        public void Update(GroupDTO group)
        {
            var groupObj = new Group();
            groupObj.Id = group.Id;
            groupObj.GroupName = group.GroupName;
            _context.Entry(groupObj).State = EntityState.Modified;
        }
    }
}
