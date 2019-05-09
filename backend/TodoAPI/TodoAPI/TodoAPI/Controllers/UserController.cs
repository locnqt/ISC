using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Cryptography.KeyDerivation;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using TodoAPI.Models;
using TodoAPI.Models.Responses;

namespace TodoAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    [Authorize(Roles = "Admin")]
    public class UserController : ControllerBase
    {
        private readonly TodoContext _context;
        public UserController(TodoContext context)
        {
            _context = context;
        }
        [HttpGet]
        public ActionResult<List<User>> Get()
        {
            return _context.Users.Include(x => x.Role).ToList();
        }

        // GET api/<controller>/5
        [HttpGet("{id}")]
        public ActionResult<User> Get(long id)
        {
            var item = _context.Users.Find(id);
            if (item == null)
            {
                return NoContent();
            }
            return Ok(item);
        }
        // POST api/<controller>
        [AllowAnonymous]
        [HttpPost]
        public IActionResult Create(User user)
        {
            User aUser = new User
            {
                UserName = user.UserName,
                PassWord = getHash(user.PassWord, user),
                Name = user.Name,
                Email = user.Email,
                Islocked = user.Islocked,
                IsDeleted = user.IsDeleted,
                RolId = user.RolId,
            };
            _context.Users.Add(aUser);
            _context.SaveChanges();
            return Ok(aUser);
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
            user.UserName = us.UserName;
            user.PassWord = getHash(us.PassWord,us);
            user.Name = us.Name;
            user.Email = us.Email;
            user.Islocked = us.Islocked;
            user.IsDeleted = us.IsDeleted;
            user.RolId = us.RolId;
            _context.Users.Update(user);
            _context.SaveChanges();
            return Ok(user);
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
        private string getHash(string text, User us)
        {
            //byte[] salt = new byte[128 / 8];
            byte[] salt = Encoding.UTF8.GetBytes(us.UserName);
            string hashed = Convert.ToBase64String(KeyDerivation.Pbkdf2(
                                                    password: text,
                                                    salt: salt,
                                                    prf: KeyDerivationPrf.HMACSHA1,
                                                    iterationCount: 10000,
                                                    numBytesRequested: 256 / 8));
            return hashed;
        }
    }
}
