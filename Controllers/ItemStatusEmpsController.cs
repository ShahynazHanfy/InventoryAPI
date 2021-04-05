using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using InventoryAPI.Models;
using InventoryAPI.Repositories.ItemStatusEmpRepositories;
using InventoryAPI.DTO;

namespace InventoryAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ItemStatusEmpsController : ControllerBase
    {
        private readonly IItemStatusEmpRepository _iitemStatusEmpRepository;

        public ItemStatusEmpsController(IItemStatusEmpRepository iitemStatusEmpRepository)
        {
            _iitemStatusEmpRepository = iitemStatusEmpRepository;
        }

        // GET: api/ItemStatusEmps
        [HttpGet]
        public IEnumerable<ItemStatusEmpDTO> GetItemStatusEmps()
        {
            return _iitemStatusEmpRepository.GetAll();
        }

        // GET: api/ItemStatusEmps/5
        [HttpGet("{id}")]
        public ActionResult<ItemStatusEmp> GetItemStatusEmp(int id)
        {
            var itemStatusEmp =_iitemStatusEmpRepository.Find(id);

            if (itemStatusEmp == null)
            {
                return NotFound();
            }

            return itemStatusEmp;
        }

        // PUT: api/ItemStatusEmps/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
        public async Task<IActionResult> PutItemStatusEmp(int id, ItemStatusEmpDTO itemStatusEmp)
        {
            if (id != itemStatusEmp.Id)
            {
                return BadRequest();
            }

            _iitemStatusEmpRepository.Update(itemStatusEmp);

            try
            {
                _iitemStatusEmpRepository.Save();
            }
            catch (DbUpdateConcurrencyException)
            {
                //if (!ItemStatusEmpExists(id))
                //{
                //    return NotFound();
                //}
                //else
                //{
                //    throw;
                //}
            }

            return NoContent();
        }

        // POST: api/ItemStatusEmps
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        public ActionResult<ItemStatusEmp> PostItemStatusEmp(ItemStatusEmpDTO itemStatusEmp)
        {
            _iitemStatusEmpRepository.Add(itemStatusEmp);
            _iitemStatusEmpRepository.Save();

            return CreatedAtAction("GetItemStatusEmp", new { id = itemStatusEmp.Id }, itemStatusEmp);
        }

        // DELETE: api/ItemStatusEmps/5
        [HttpDelete("{id}")]
        public IActionResult DeleteItemStatusEmp(int id)
        {
            var itemStatusEmp =_iitemStatusEmpRepository.Find(id);
            if (itemStatusEmp == null)
            {
                return NotFound();
            }

            _iitemStatusEmpRepository.Delete(id);
            _iitemStatusEmpRepository.Save();

            return NoContent();
        }
        [HttpGet]
        [Route("GetAllStatusesByItemId/{ItemId}")]
         public IEnumerable<ItemStatusEmpDTO> GetAllStatusesByItemId(int ItemId)
        {
           var ItemStatuses = _iitemStatusEmpRepository.GetAllStatusesByItemId(ItemId);
            return ItemStatuses;
        }
        }
}
