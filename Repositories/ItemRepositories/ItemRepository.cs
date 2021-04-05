using InventoryAPI.DTO;
using InventoryAPI.Models;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace InventoryAPI.Repositories.ItemRepositories
{
    public class ItemRepository : IItemRepository
    {
        private readonly ApplicationDbContext _context;
        public ItemRepository(ApplicationDbContext context)
        {
            _context = context;
        }
        public int Add(Item item)
        {
            var itemObj = new Item();
            //item.Id = itemObj.Id;
            itemObj.ItemName = item.ItemName;
            itemObj.SubGroupId = item.SubGroupId;
            itemObj.Photo = item.Photo;
            _context.Items.Add(itemObj);
            _context.SaveChanges();
            return itemObj.Id;
        }


        public void Delete(int id)
        {
            var item = Find(id);
            _context.Items.Remove(item);
        }

        public Item Find(int id)
        {

            return _context.Items.Find(id); 
        }

        public IEnumerable<ItemDTO> GetAll()
        {
            var items = _context.Items.Select(e => new ItemDTO
            {
                Id = e.Id,
                ItemName = e.ItemName,
                SubGroupId = e.SubGroupId,
                SubGroupName = e.SubGroup.SubGroupName,
                Photo = e.Photo
                
            }).ToList();
            return items;
        }

        public ItemDTO GetById(int id)
        {
            var item = _context.Items.Include(c => c.SubGroup).FirstOrDefault(e => e.Id == id);
            var itemDTO = new ItemDTO
            {
                Id = item.Id,
                SubGroupId = item.SubGroupId,
                SubGroupName = item.SubGroup.SubGroupName,
                ItemName = item.ItemName,
                Photo = item.Photo
            };
            return itemDTO;
            
        }

        public void Save()
        {
            _context.SaveChanges();
        }

        public void Update(ItemDTO item)
        {
            var itemDTO = new Item();
            itemDTO.Id = item.Id;
            itemDTO.ItemName = item.ItemName;
            itemDTO.SubGroupId = item.SubGroupId;
            _context.Entry(itemDTO).State = EntityState.Modified;
        }
    }
}
