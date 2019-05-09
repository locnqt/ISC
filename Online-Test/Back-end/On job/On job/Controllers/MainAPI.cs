using System;
using System.Collections.Generic;
using System.IdentityModel.Tokens.Jwt;
using System.Linq;
using System.Security.Claims;
using System.Text;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.IdentityModel.Tokens;
using Onjob.Models;
using Onjob.Models.Requests;
using Onjob.Models.Respones;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace Onjob.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class AuthController : ControllerBase
    {
        private readonly OnJobContext _context;
        public AuthController (OnJobContext context)
        {
            _context = context;
        }
        [HttpPost("Token")]
        public ActionResult Token(LoginRequest request)
        {
            if(!String.IsNullOrEmpty(request.UserName) && !String.IsNullOrEmpty(request.Password))
            {
                var user = _context.GiaoViens.Where(x => x.Ma == request.UserName && x.MatKhau == request.Password).SingleOrDefault();
                if (user != null)
                {
                    var claimData = new[] { new Claim(ClaimTypes.Name, request.UserName) };
                    var key = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(request.UserName + " " + request.Password));
                    var singingCredentials = new SigningCredentials(key, SecurityAlgorithms.HmacSha256Signature);

                    var token = new JwtSecurityToken(
                        issuer: "mysite.com",
                        audience: "mysite.com",
                        expires: DateTime.Now.AddMinutes(20),
                        claims: claimData,
                        signingCredentials: singingCredentials
                        );
                    var tokenstring = new JwtSecurityTokenHandler().WriteToken(token);
                    var userResult = new LoginRespone
                    {
                        Id = user.ID,
                        Id_Cq = user.Id_Cq,
                        FullName = user.Ho + " " + user.Ten,
                        token = "Bearer " + tokenstring
                    };
                    return Ok(userResult);
                }
            }
            return Unauthorized();
        }
    }
}
