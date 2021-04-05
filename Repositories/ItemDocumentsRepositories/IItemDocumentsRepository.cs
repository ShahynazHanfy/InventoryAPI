using InventoryAPI.DTO;
using InventoryAPI.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace InventoryAPI.Repositories.ItemDocumentsRepositories
{
    public interface IItemDocumentsRepository : IDisposable
    {
        IEnumerable<ItemDocumentsDTO> GetAll();
        ItemDocumentsDTO GetById(int id);
        IEnumerable<ItemDocumentsDTO> GetItemDocumentsByItemId(int itemId);
        void UpdateByItemId(int itemId, List<ItemDocumentsDTO> itemDocumentsDTO);

        ItemDocuments Find(int id);
        void Add(List<ItemDocumentsDTO> itemDocumentsDTO);
        void Update(ItemDocumentsDTO itemDocumentsDTO);
        void Delete(int id);
        void Save();
    }
}
