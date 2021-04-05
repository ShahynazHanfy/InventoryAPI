using InventoryAPI.DTO;
using InventoryAPI.Models;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace InventoryAPI.Repositories.ItemDocumentsRepositories
{
    public class ItemDocumentsRepository : IItemDocumentsRepository
    {
          private readonly ApplicationDbContext _context;
        public ItemDocumentsRepository(ApplicationDbContext context)
        {
            _context = context;
        }
        public void Add(List<ItemDocumentsDTO> itemDocumentsDTOs)
        {
            foreach (var item in itemDocumentsDTOs)
            {
                ItemDocuments itemDocuments = new ItemDocuments();
                itemDocuments.Id = item.Id;
                itemDocuments.ItemId = item.ItemId;
                itemDocuments.FileName = item.FileName;
                itemDocuments.DocumentName = item.DocumentName;
                _context.Add(itemDocuments);
            }
        }

        public void Delete(int id)
        {
            ItemDocuments itemDocuments = Find(id);
            _context.ItemDocuments.Remove(itemDocuments);
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

        public ItemDocuments Find(int id)
        {
            return _context.ItemDocuments.Find(id);
        }

        public IEnumerable<ItemDocumentsDTO> GetAll()
        {
            throw new NotImplementedException();
        }

        public ItemDocumentsDTO GetById(int id)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<ItemDocumentsDTO> GetItemDocumentsByItemId(int itemId)
        {
            var itemDocuments = _context.ItemDocuments.Where(d => d.ItemId == itemId).Select(itemDocuments =>
              new ItemDocumentsDTO()
              {
                  Id = itemDocuments.Id,
                  FileName = itemDocuments.FileName,
                  ItemId = itemDocuments.ItemId,
                  DocumentName= itemDocuments.DocumentName

              }).ToList();
            return itemDocuments;
        }

        public void Save()
        {
            _context.SaveChanges();

        }

        public void Update(ItemDocumentsDTO itemDocumentsDTO)
        {
            ItemDocuments itemDocuments = new ItemDocuments();
            itemDocuments.Id = itemDocumentsDTO.Id;
            itemDocuments.DocumentName = itemDocuments.DocumentName;
            itemDocuments.ItemId = itemDocuments.ItemId;
            itemDocuments.FileName = itemDocuments.FileName;
            
            _context.Entry(itemDocuments).State = EntityState.Modified;
        }


        public void UpdateByItemId(int itemId, List<ItemDocumentsDTO> itemDocumentsDTOs)
        {
            throw new NotImplementedException();
        }
    }
}
