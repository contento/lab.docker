using Microsoft.AspNetCore.Mvc;
using System;

namespace dotnet_date_time_app.Controllers
{
    public class HomeController : Controller
    {
        public IActionResult Index()
        {
            ViewBag.CurrentDateTime = DateTime.Now;
            return View();
        }
    }
}