using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using TodoAPI.Models;
using TodoAPI.Models.Responses;

// For more information on enabling MVC for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace TodoAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class ItemController : ControllerBase
    {
        private readonly TodoContext _context;
        private readonly IHostingEnvironment _hostingEnvironment;
        public ItemController(TodoContext context, IHostingEnvironment hostingEnvironment)
        {
            _context = context;
            _hostingEnvironment = hostingEnvironment;
        }
        //GET: api/<controller> {getall}
        [HttpGet]
        public ActionResult<List<Item>> Get()
        {
            return _context.Items.ToList();
        }

        // GET api/<controller>/5
        [HttpGet("{id}")]
        public ActionResult<Item> Get(int id)
        {
            var item = _context.Items.Find(id);
            if (item == null)
            {
                return NoContent();
            }
            return item;
        }

        // POST api/<controller>
        [HttpPost]
        public IActionResult Create([FromForm] Item data)
        {
            //luu cac field ko la file
            _context.Items.Add(data);
            _context.SaveChanges();

            var file = data.File;
            if (file != null) //ktra co file
            {
                string path = _hostingEnvironment.WebRootPath + "\\Data\\"; //luu thu muc
                string newFileName = data.ItemId + "_" + file.FileName; //tao ten moi de file là unique
                
                using (var stream =new FileStream(path + newFileName, FileMode.Create))
                {
                    file.CopyTo(stream);

                    data.File = null;
                    data.Image = newFileName;
                    _context.Entry(data).Property(x => x.Image).IsModified = true;
                    _context.SaveChanges();
                }
            }
            //_context.Items.Add(item);
            //_context.SaveChanges();
            //return CreatedAtRoute("Get", new { id = item.ItemId }, item);
            return Ok(data);
        }

        // PUT api/<controller>/5
        [HttpPut("{id}")]
        public IActionResult Update(int id, [FromForm] Item data)
        {
            var item = _context.Items.Find(id);
            if (item == null)
            {
                return NotFound();
            }

            item.Name = data.Name;
            item.Descript = data.Descript;
            item.Price = data.Price;

            _context.Items.Update(item);
            _context.SaveChanges();

            var file = data.File;
            if (file != null) //ktra co file
            {
                string path = _hostingEnvironment.WebRootPath + "\\Data\\";
                //xoa oldfile
                string oldFileName = item.Image;
                FileInfo oldFile = new FileInfo(path + oldFileName);
                if (oldFile.Exists) oldFile.Delete();
                string newFileName = item.ItemId + "_" + file.FileName; //tao ten moi de file là unique
                using (var stream = new FileStream(path + newFileName, FileMode.Create))
                {
                    file.CopyTo(stream);

                    item.File = null;
                    item.Image = newFileName;
                    _context.Entry(item).Property(x => x.Image).IsModified = true;
                    _context.SaveChanges();
                }
            }
            return Ok(item);
        }

        // DELETE api/<controller>/5
        [HttpDelete("{id}")]
        public IActionResult Delete(long id)
        {
            var user = _context.Items.Find(id);
            if (user == null)
            {
                return NotFound();
            }
            _context.Items.Remove(user);
            _context.SaveChanges();
            return NoContent();
        }
    }
}
