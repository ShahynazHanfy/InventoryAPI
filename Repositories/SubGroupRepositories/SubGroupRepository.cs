﻿using InventoryAPI.DTO;
using InventoryAPI.Models;
using Microsoft.AspNetCore.Components;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace InventoryAPI.Repositories.SubGroupRepositories
{
    public class SubGroupRepository : ISubGroupRepository
    {
        private readonly ApplicationDbContext _context;
        public SubGroupRepository(ApplicationDbContext context)
        {
            _context = context;
        }
        public void Add(SubGroupDTO subGroupDTO)
        {
            var subGroup = new SubGroup();
            subGroup.Id = subGroupDTO.Id;
            subGroup.SubGroupName = subGroupDTO.SubGroupName;
            subGroup.GroupId = subGroupDTO.GroupId;
            _context.SubGroups.Add(subGroup);
        }

        public void Delete(int id)
        {
            SubGroup subGroup = Find(id);
            _context.Remove(subGroup);
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
        public SubGroup Find(int id)
        {
            return _context.SubGroups.Find(id);
        }

        public IEnumerable<SubGroupDTO> GetAll()
        {
            var subGroups = _context.SubGroups.Select(e => new SubGroupDTO
            {
                Id = e.Id,
                SubGroupName = e.SubGroupName,
                GroupName = e.Group.GroupName,
                GroupId = e.GroupId,
                Activation = e.Activation
                

            }).ToList();
            return subGroups;
        }

        public SubGroupDTO GetById(int id)
        {
            var subGroupObj = _context.SubGroups.Include(e => e.GroupId).FirstOrDefault(e => e.Id == id);
            var subGroupDTO = new SubGroupDTO()
            {
                Id = subGroupObj.Id,
                SubGroupName = subGroupObj.SubGroupName,
                GroupId = subGroupObj.GroupId,
                Activation = subGroupObj.Activation
            };

            if (subGroupDTO == null)
            {
                return null;
            }
            return subGroupDTO;
        }

        public void Save()
        {
            _context.SaveChanges();
        }

        public void Update(SubGroupDTO subGroupDTO)
        {
            var SubGroup = new SubGroup();
            SubGroup.Id = subGroupDTO.Id;
            SubGroup.GroupId = subGroupDTO.GroupId;
            SubGroup.SubGroupName = subGroupDTO.SubGroupName;
            _context.Entry(SubGroup).State = EntityState.Modified;
        }
        public SubGroupDTO GetGroupBySubGroupId(int subGroupId)
        {
            return _context.SubGroups.Include(s => s.Group).Where(s => s.Id == subGroupId).Select(sub => new SubGroupDTO
            {
                GroupId = sub.GroupId,
                GroupName = sub.Group.GroupName
            }).FirstOrDefault();
            
        }

        public void UpdateActivaState(SubGroupDTO subGroupDTO)
        {
             var SubGroupobj = new SubGroup();
            SubGroupobj.Id = subGroupDTO.Id;
            SubGroupobj.GroupId = subGroupDTO.GroupId;
            SubGroupobj.SubGroupName = subGroupDTO.SubGroupName;
            SubGroupobj.Activation = subGroupDTO.Activation;
            _context.Entry(SubGroupobj).State = EntityState.Modified;
        }

        public IEnumerable<SubGroupDTO> GetSubGroupsByGroupId(int GroupId)
        {
            var subGroups = _context.SubGroups.Include(s => s.Group).Where(s => s.GroupId == GroupId).Select(sub => new SubGroupDTO
            {
            Id=sub.Id,
            SubGroupName = sub.SubGroupName
            }).ToList();
            return subGroups;
        }
    }
}
