using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using InventoryAPI.Models;
using InventoryAPI.Repositories.ItemRepositories;
using InventoryAPI.DTO;

namespace InventoryAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ItemsController : ControllerBase
    {
        private readonly IItemRepository _itemRepository;

        public ItemsController(IItemRepository itemRepository)
        {
            _itemRepository = itemRepository;
        }

        // GET: api/Items
        [HttpGet]
        public IEnumerable<ItemDTO> GetItems()
        {
            return _itemRepository.GetAll();
        }

        // GET: api/Items/5
        [HttpGet("{id}")]
        public ActionResult<ItemDTO> GetItem(int id)
        {
            var item = _itemRepository.GetById(id);

            if (item == null)
            {
                return NotFound();
            }

            return item;
        }

        // PUT: api/Items/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
        public IActionResult PutItem(int id, ItemDTO item)
        {
            if (id != item.Id)
            {
                return BadRequest();
            }

            _itemRepository.Update(item);

            try
            {
                _itemRepository.Save();
            }
            catch (DbUpdateConcurrencyException ex)
            {
                string msg = ex.Message;
            }

            return NoContent();
        }

        // POST: api/Items
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        public ActionResult<Item> PostItem(Item item)
        {
            _itemRepository.Add(item);
            _itemRepository.Save();

            return CreatedAtAction("GetItem", new { id = item.Id }, item);
        }

        // DELETE: api/Items/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteItem(int id)
        {
            var item = _itemRepository.Find(id);
            if (item == null)
            {
                return NotFound();
            }

            _itemRepository.Delete(id);
            _itemRepository.Save();

            return NoContent();
        }

       
    }
}
