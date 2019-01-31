using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore.Diagnostics;
using ZYH.Common.Models; 

using ZYH.Store.Manage.Entity.Models;
using ZYH.Store.Manage.Service.Interface;

namespace ZYH.Store.Manage.Core.Api.Controllers
{
    public class DepartmentController: AuthorizeController
    {
        private IDepartmentService service = null;

        public DepartmentController(IDepartmentService service_)
        {
            service = service_;
        }

        [HttpGet]
        public ActionResult<string> Get()
        {
            return  new ActionResult<string>("test str");
        }
        [HttpPost]
        public ActionResult<ResultData<Department>> Save([FromBody] Department department)
        { 
            var result = new ResultData<Department>(service.Save(department));
            return new ActionResult<ResultData<Department>>(result); 
        }
    }
}
