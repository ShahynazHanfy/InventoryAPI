using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using InventoryAPI.Models;
using InventoryAPI.Repositories.SubGroupRepositories;
using InventoryAPI.DTO;

namespace InventoryAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class SubGroupsController : ControllerBase
    {
        private readonly ISubGroupRepository _subGroupRepository;

        public SubGroupsController(ISubGroupRepository subGroupRepository)
        {
            _subGroupRepository = subGroupRepository;
        }

        // GET: api/SubGroups
        [HttpGet]
        public  IEnumerable<SubGroupDTO> GetSubGroups()
        {
            return _subGroupRepository.GetAll();
        }

        // GET: api/SubGroups/5
        [HttpGet("{id}")]
        public ActionResult<SubGroupDTO> GetSubGroup(int id)
        {
            var subGroup =  _subGroupRepository.GetById(id);

            if (subGroup == null)
            {
                return NotFound();
            }

            return subGroup;
        }

        // PUT: api/SubGroups/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
        public IActionResult PutSubGroup(int id, SubGroupDTO subGroup)
        {
            if (id != subGroup.Id)
            {
                return BadRequest();
            }

            _subGroupRepository.Update(subGroup);

            try
            {
                _subGroupRepository.Save();
            }
            catch (DbUpdateConcurrencyException ex)
            {
                 string msg =ex.Message;
            }

            return NoContent();
        }

        // POST: api/SubGroups
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        public ActionResult<SubGroupDTO> PostSubGroup(SubGroupDTO subGroup)
        {
            _subGroupRepository.Add(subGroup);
            _subGroupRepository.Save();

            return CreatedAtAction("GetSubGroup", new { id = subGroup.Id }, subGroup);
        }

        // DELETE: api/SubGroups/5
        [HttpDelete("{id}")]
        public IActionResult DeleteSubGroup(int id)
        {
            var subGroup = _subGroupRepository.Find(id);
            if (subGroup == null)
            {
                return NotFound();
            }

            _subGroupRepository.Delete(id);
            _subGroupRepository.Save();

            return NoContent();
        }

        //private bool SubGroupExists(int id)
        //{
        //    return _context.SubGroups.Any(e => e.Id == id);
        //}
    }
}
