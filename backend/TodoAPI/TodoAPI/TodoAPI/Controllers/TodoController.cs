using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
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
    public class TodoController : ControllerBase
    {
        private readonly TodoContext _context;
        public TodoController(TodoContext context)
        {
            _context = context;
            //if (_context.TodoItems.Count() ==0)
            //{
            //    _context.TodoItems.Add(new TodoItem { Name = "Item1", IsComplete =true, type= new TodoType { Name="ahaha" } });
            //    _context.SaveChanges();
            //}
        }
        // GET: api/<controller> {getall}
        //[HttpGet]
        //public ActionResult<List<TodoItem>> Get()
        //{
        //    return _context.TodoItems.Include(x => x.type).ToList();
        //    //.Select(x => new TodoResponse
        //    //{
        //    //    UserId = x.UserId,
        //    //    UserName = x.UserName,
        //    //    Pass = x.Pass,
        //    //    Name = x.Name,
        //    //    Email = x.Email,
        //    //    Islocked = x.Islocked,
        //    //    IsDeleted = x.IsDeleted
        //    //})
        //    //.AsNoTracking().ToList();
        //}
        [HttpGet]
        public ActionResult<List<User>> Get()
        {
            return _context.Users.Include(x => x.Role).ToList();
        }

        // GET api/<controller>/5
        [HttpGet("{id}")]
        public ActionResult<User> Get(int id)
        {
            var item = _context.Users.Find(id);
            if (item == null)
            {
                return NoContent();
            }
            return item;
        }

        // POST api/<controller>
        [HttpPost]
        public IActionResult Create(User user)
        {
            _context.Users.Add(user);
            _context.SaveChanges();
            return CreatedAtRoute("Get", new { id = user.UserId }, user);
        }

        // PUT api/<controller>/5
        [HttpPut("{id}")]
        public IActionResult Update(long id, User us)
        {
            var user = _context.Users.Find(id);
            if (user == null)
            {
                return NoContent();
            }
            user = us;
            _context.Users.Update(user);
            _context.SaveChanges();
            return NoContent();
        }

        // DELETE api/<controller>/5
        [HttpDelete("{id}")]
        public IActionResult Delete(long id)
        {
            var user = _context.Users.Find(id);
            if (user == null)
            {
                return NotFound();
            }
            _context.Users.Remove(user);
            _context.SaveChanges();
            return NoContent();
        }
    }
}
