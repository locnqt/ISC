using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Student.Models;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace Student.Controllers
{
    [Route("api/[controller]")]
    public class StudentController : ControllerBase
    {
        private readonly StudentContext _context;
        public StudentController(StudentContext context)
        {
            _context = context;
            if (_context.StudentItems.Count() == 0)
            {
                _context.StudentItems.Add(new StudentItem { StudentId = "123456", FirstName = "Nguyen Quang", LastName = "Tuan Loc", Email = "abc@gmail.com", Phone = "0919293949", Address = "123 Quang Trung, Q12" });
                _context.SaveChanges();
            }
        }
        // GET: api/Todo
        [HttpGet]
        public ActionResult<List<StudentItem>> Get()
        {
            return _context.StudentItems.ToList();
        }
        // GET: api/Todo/5
        [HttpGet("{id}", Name = "Get")]
        public ActionResult<StudentItem> Get(long id)
        {
            var item = _context.StudentItems.Find(id);
            if (item == null)
            {
                return NoContent();
            }
            return item;
        }

        // POST api/Todo
        [HttpPost]
        public IActionResult Create(StudentItem item)
        {
            _context.StudentItems.Add(item);
            _context.SaveChanges();

            return CreatedAtRoute("Get", new { id = item.STU_ID }, item);
        }

        // PUT api/Todo/5
        [HttpPut("{id}")]
        public IActionResult Update(int id, StudentItem item)
        {
            var todo = _context.StudentItems.Find(id);
            if (todo == null)
            {
                return NotFound();
            }
            todo.StudentId = item.StudentId;
            todo.FirstName = item.FirstName;
            todo.LastName = item.LastName;
            todo.Email = item.Email;
            todo.Phone = item.Phone;
            todo.Address = item.Address;

            _context.StudentItems.Update(todo);
            _context.SaveChanges();
            return NoContent();
        }

        // DELETE api/Todo/5
        [HttpDelete("{id}")]
        public IActionResult Delete(long id)
        {
            var todo = _context.StudentItems.Find(id);
            if (todo == null)
            {
                return NoContent();
            }
            _context.StudentItems.Remove(todo);
            _context.SaveChanges();
            return NoContent();
        }
    }
}
