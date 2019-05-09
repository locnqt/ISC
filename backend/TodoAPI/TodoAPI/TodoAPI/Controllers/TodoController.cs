using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using TodoAPI.Models;
using TodoAPI.Models.Responses;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace TodoAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    [Authorize(Roles = "User")]
    public class TodoController : ControllerBase
    {
        private readonly TodoContext _context;
        public TodoController(TodoContext context)
        {
            _context = context;
        }
        //GET: api/<controller> {getall}
        [HttpGet]
        public ActionResult<List<TodoResponse>> Get()
        {
            return _context.TodoItems.Include(x => x.type)
            .Select(x => new TodoResponse
            {
                Id = x.Id,
                Name = x.Name,
                IsComplete = x.IsComplete,
                TYPE_ID = x.TYPE_ID,
                TypeName = x.type.Name,
            })
            .AsNoTracking().ToList();
        }

        [HttpGet("{id}")]
        public ActionResult<TodoItem> Get(long id)
        {
            var item = _context.TodoItems.Find(id);
            if (item == null)
            {
                return NoContent();
            }
            return item;
        }

        // POST api/Todo
        [HttpPost]
        public IActionResult Create(TodoItem item)
        {
            _context.TodoItems.Add(item);
            _context.SaveChanges();

            return CreatedAtRoute("Get", new { id = item.Id }, item);
        }

        // PUT api/Todo/5
        [HttpPut("{id}")]
        public IActionResult Update(int id, TodoItem item)
        {
            var todo = _context.TodoItems.Find(id);
            if (todo == null)
            {
                return NotFound();
            }
            todo.IsComplete = item.IsComplete;
            todo.Name = item.Name;

            _context.TodoItems.Update(todo);
            _context.SaveChanges();
            return NoContent();
        }

        // DELETE api/Todo/5
        [HttpDelete("{id}")]
        public IActionResult Delete(long id)
        {
            var todo = _context.TodoItems.Find(id);
            if (todo == null)
            {
                return NoContent();
            }
            _context.TodoItems.Remove(todo);
            _context.SaveChanges();
            return NoContent();
        }
    }
}

