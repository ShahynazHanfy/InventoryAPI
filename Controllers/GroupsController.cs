using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using InventoryAPI.DTO;
using InventoryAPI.Models;
using InventoryAPI.Repositories.GroupRepositories;


namespace InventoryAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class GroupsController : ControllerBase
    {
        private readonly IGroupRepository  _groupRepository;

        public GroupsController(IGroupRepository groupRepository)
        {
            _groupRepository = groupRepository;
        }

        // GET: api/Groups
        [HttpGet]
        public IEnumerable<GroupDTO> GetGroupDTO()
        {
            return _groupRepository.GetAll();
        }

        // GET: api/Groups/5
        [HttpGet("{id}")]
        public ActionResult<GroupDTO> GetGroupDTO(int id)
        {
            var groupDTO = _groupRepository.GetById(id);

            if (groupDTO == null)
            {
                return NotFound();
            }

            return groupDTO;
        }

        // PUT: api/Groups/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
        public IActionResult PutGroupDTO(int id, GroupDTO groupDTO)
        {
            if (id != groupDTO.Id)
            {
                return BadRequest();
            }

            _groupRepository.Update(groupDTO);

            try
            {
                _groupRepository.Save();
            }
            catch (DbUpdateConcurrencyException ex)
            {
                string msg = ex.Message;
               
            }

            return NoContent();
        }

        // POST: api/Groups
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        public ActionResult<GroupDTO> PostGroupDTO(GroupDTO groupDTO)
        {
            _groupRepository.Add(groupDTO);
            _groupRepository.Save();

            return CreatedAtAction("GetGroupDTO", new { id = groupDTO.Id }, groupDTO);
        }

        // DELETE: api/Groups/5
        [HttpDelete("{id}")]
        public IActionResult DeleteGroupDTO(int id)
        {
            var groupDTO = _groupRepository.Find(id);
            if (groupDTO == null)
            {
                return NotFound();
            }

            _groupRepository.Delete(id);
            _groupRepository.Save();

            return NoContent();
        }
 

    }
}
