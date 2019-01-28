using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Hangfire;
using Microsoft.AspNetCore.Mvc;

// For more information on enabling MVC for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace WebApplicationHangfire.web
{ 
    [Route("ttt/[controller]")]
    public class HangfireTestController : Controller
    {
        // GET: /<controller>/ 
        public IActionResult Index()
        {
            BackgroundJob.Enqueue(() => Console.WriteLine($"我是只执行一次的任务:{DateTime.Now}"));
            return View();
        } 
         
    }
}
