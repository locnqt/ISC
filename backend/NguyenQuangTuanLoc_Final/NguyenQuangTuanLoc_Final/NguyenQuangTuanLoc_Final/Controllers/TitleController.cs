using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using NguyenQuangTuanLoc_Final.Models;
using NguyenQuangTuanLoc_Final.Models.Reponses;

namespace NguyenQuangTuanLoc_Final.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class TitleController : ControllerBase
    {
        private readonly LibaryContext _context;
        public TitleController(LibaryContext context)
        {
            _context = context;
        }
        [HttpGet]
        public ActionResult<List<Title>> Get()
        {
            return _context.Titles.ToList();
        }

        // GET api/<controller>/5
        [HttpGet("{id}")]
        public ActionResult<Title> Get(int id)
        {
            var item = _context.Titles.Find(id);
            if (item == null)
            {
                return NoContent();
            }
            return item;
        }

        // POST api/<controller>
        [HttpPost]
        public ActionResult Create(Title title)
        {
            title.CreateDay = DateTime.Now;
            _context.Titles.Add(title);
            _context.SaveChanges();
            return Ok(title);
        }

        // PUT api/<controller>/5
        [HttpPut("{id}")]
        public IActionResult Update(int id, Title tt)
        {
            var title = _context.Titles.Find(id);
            if (title == null)
            {
                return NoContent();
            }
            title.Titlee = tt.Titlee;
            title.Pub_year = tt.Pub_year;
            title.Publisher = tt.Publisher;
            title.Auther = tt.Auther;
            title.Descript = tt.Descript;
            title.CreateDay = tt.CreateDay;
            title.CreateBy = tt.CreateBy;
            _context.Titles.Update(title);
            _context.SaveChanges();
            return Ok(title);
        }

        // DELETE api/<controller>/5
        [HttpDelete("{id}")]
        public IActionResult Delete(int id)
        {
            var title = _context.Titles.Find(id);
            if (title == null)
            {
                return NotFound();
            }
            title.CreateDay = DateTime.Now;
            _context.Titles.Remove(title);
            _context.SaveChanges();
            return Ok(title);
        }
        // GET: api/search
        [HttpGet("search-books/{searchText}", Name = "search")]
        public ActionResult<List<BookReponse>> Search(string searchText)
        {
            return _context.Books.Include(x => x.Title).Where(x => (x.Title.Titlee.Contains(searchText) || x.Title.Auther.Contains(searchText) || x.Title.Publisher.Contains(searchText)) && (x.Status !=0))
                .Select(x => new BookReponse
                {
                    Book_ID = x.BookId,
                    Title_ID = x.TitId,
                    Book_title = x.Title.Titlee,
                    Author = x.Title.Auther,
                    Publisher = x.Title.Publisher,
                    Available = x.Status,
                })
                .AsNoTracking().ToList();
        }

    }
}