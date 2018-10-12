using System;
using System.Collections.Generic;
using System.IdentityModel.Tokens.Jwt;
using System.Linq;
using System.Security.Claims;
using System.Text;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.IdentityModel.Tokens;
using NguyenQuangTuanLoc_Final.Models;
using NguyenQuangTuanLoc_Final.Models.Reponses;

namespace NguyenQuangTuanLoc_Final.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class LibrarianController : ControllerBase
    {
        private readonly LibaryContext _context;
        public LibrarianController(LibaryContext context)
        {
            _context = context;
            if (_context.Librarians.ToList().Count == 0)
            {
                Librarian librarian = new Librarian
                {
                    Account = "libarian1",
                    PassWord = "libarian1",
                    Name = "vanteo",
                    Gender = true,
                    Email = "abc@gmail.com",
                    Phone = "0969696969",
                    CreateDay = DateTime.Now,
                    CreateBy = 1,
                };
                _context.Librarians.Add(librarian);
                _context.SaveChanges();
            }
        }
        [HttpPost("login")]
        public IActionResult Create(LoginRequest request)
        {
            if (!String.IsNullOrEmpty(request.username) && !String.IsNullOrEmpty(request.password))
            {
                var libarian = _context.Librarians.Where(x => x.Account == request.username && x.PassWord == request.password).SingleOrDefault();

                if (libarian != null)
                {
                    var claimData = new[] { new Claim(ClaimTypes.Name, request.username) };
                    var key = new SymmetricSecurityKey(Encoding.UTF8.GetBytes("1234567890123456")); //at least 16 char
                    var signingCredentials = new SigningCredentials(key, SecurityAlgorithms.HmacSha256Signature);
                    var token = new JwtSecurityToken(
                        issuer: "mysite.com",
                        audience: "mysite.com",
                        expires: DateTime.Now.AddSeconds(10),
                        claims: claimData,
                        signingCredentials: signingCredentials
                    );
                    var tonkenString = new JwtSecurityTokenHandler().WriteToken(token);
                    var userResult = new LoginReponse
                    {
                        Id = libarian.LibId,
                        UserName = libarian.Account,
                        FullName = libarian.Name,
                        Token = "Bearer " + tonkenString
                    };
                    return Ok(userResult);
                }
            }
            return Ok("Wrong username or password");
        }
    }
}