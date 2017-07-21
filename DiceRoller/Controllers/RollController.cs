using System;
using System.Linq;
using Microsoft.AspNetCore.Mvc;

namespace DiceRoller.Controllers
{
    [Route("api/[controller]")]
    public class RollController : Controller
    {
        [HttpGet("")]
        public JsonResult Get(int size, int count)
        {
            var random = new Random();
            var rolls = Enumerable.Range(0, count)
                .Select(x => random.Next(1, size+1))
                .ToArray();

            return Json(rolls);
        }
    }
}