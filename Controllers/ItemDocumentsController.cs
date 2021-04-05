using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using InventoryAPI.DTO;
using InventoryAPI.Models;
using InventoryAPI.Repositories.ItemDocumentsRepositories;

namespace InventoryAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ItemDocumentsController : ControllerBase
    {
        private readonly IItemDocumentsRepository _itemDocumentsRepository;

        public ItemDocumentsController(IItemDocumentsRepository itemDocumentsRepository)
        {
            _itemDocumentsRepository = itemDocumentsRepository;
        }

        // GET: api/ItemDocuments
        [HttpGet]
        public IEnumerable<ItemDocumentsDTO> GetItemDocumentsDTO()
        {
            return _itemDocumentsRepository.GetAll();
        }

        // GET: api/ItemDocuments/5
        [HttpGet("{id}")]
        public ActionResult<ItemDocumentsDTO> GetItemDocumentsDTO(int id)
        {
            var itemDocumentsDTO = _itemDocumentsRepository.GetById(id); 

            if (itemDocumentsDTO == null)
            {
                return NotFound();
            }

            return itemDocumentsDTO;
        }

        // PUT: api/ItemDocuments/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
        public async Task<IActionResult> PutItemDocumentsDTO(int id, ItemDocumentsDTO itemDocumentsDTO)
        {
            if (id != itemDocumentsDTO.Id)
            {
                return BadRequest();
            }

            _itemDocumentsRepository.Update(itemDocumentsDTO);

            try
            {
                _itemDocumentsRepository.Save();
            }
            catch (DbUpdateConcurrencyException ex)
            {
                string msg = ex.Message;
            }

            return NoContent();
        }

         
        

        // POST: api/ItemDocuments
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        public void PostItemDocumentsDTO(List<ItemDocumentsDTO> itemDocumentsDTO)
        {   
            _itemDocumentsRepository.Add(itemDocumentsDTO);
            _itemDocumentsRepository.Save();

           // return CreatedAtAction("GetItemDocumentsDTO", new { id = itemDocumentsDTO.Id }, itemDocumentsDTO);
        }

        // DELETE: api/ItemDocuments/5
        [HttpDelete("{id}")]
        public IActionResult DeleteItemDocumentsDTO(int id)
        {
            var itemDocumentsDTO = _itemDocumentsRepository.Find(id);
            if (itemDocumentsDTO == null)
            {
                return NotFound();
            }

            _itemDocumentsRepository.Delete(id);
            _itemDocumentsRepository.Save();

            return NoContent();
        }

        [HttpGet]
        [Route("GetItemDocumentsItemId/{ItemId}")]
        public IEnumerable<ItemDocumentsDTO> GetProjectDocumentsByProjectId(int ItemId)
        {
            return _itemDocumentsRepository.GetItemDocumentsByItemId(ItemId);
        }

        //[HttpDelete("{id}")]
        //public ActionResult<ItemDocuments> DeleteProjectDocumentDTO(int id)
        //{
        //    var itemDocumentDTO = _itemDocumentsRepository.Find(id);
        //    if (itemDocumentDTO == null)
        //    {
        //        return NotFound();
        //    }


        //    _itemDocumentsRepository.Delete(id);
        //    _itemDocumentsRepository.Save();

        //    return Ok();
        //}


    }
}
