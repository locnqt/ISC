using System;
using System.Collections.Generic;
using System.IdentityModel.Tokens.Jwt;
using System.Linq;
using System.Security.Claims;
using System.Text;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Cryptography.KeyDerivation;
using Microsoft.AspNetCore.Mvc;
using Microsoft.IdentityModel.Tokens;
using TodoAPI.Models;
using TodoAPI.Models.Requests;
using TodoAPI.Models.Responses;

// For more information on enabling MVC for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace TodoAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class AuthController : ControllerBase
    {
        private readonly TodoContext _context;

        public AuthController(TodoContext context)
        {
            _context = context;
            if (_context.Users.ToList().Count == 0)
            {
                User aUser = new User
                {
                    UserName = "admin",
                    PassWord = getHash("admin", "admin"),
                    Name = "vanteo",
                    Email = "abc@gmail.com",
                    Islocked = false,
                    IsDeleted = false,
                    RolId = 3
                };
                _context.Users.Add(aUser);
                _context.SaveChanges();
            }
        }
        [AllowAnonymous]
        [HttpPost("token")]
        // GET: /<controller>/
        public ActionResult Token([FromBody]LoginRequest request)
        {
            if(!String.IsNullOrEmpty(request.UserName) && !String.IsNullOrEmpty(request.PassWord))
            {
                var user = _context.Users.Where(x => x.UserName == request.UserName && x.PassWord == getHash(request.PassWord, request.UserName)).SingleOrDefault();

                var claimData = new List<Claim>();
                if(user !=null)
                {
                    if (user.RolId == 1)
                    {
                        claimData.Add(new Claim(ClaimTypes.Role, "Admin"));
                    }
                    if (user.RolId == 2)
                    {
                        claimData.Add(new Claim(ClaimTypes.Role, "User"));
                    }
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
                    var userResult = new LoginResponse
                    {
                        Id = user.UserId,
                        UserName = user.UserName,
                        FullName = user.Name,
                        Token = "Bearer " + tonkenString
                    };
                    return Ok(userResult);
                }
            }
            return Unauthorized();
        }
        private string getHash(string text, string username)
        {
            //byte[] salt = new byte[128 / 8];
            byte[] salt = Encoding.UTF8.GetBytes(username);
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
