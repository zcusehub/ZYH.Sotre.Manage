using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using ZYH.Common.Models;

using ZYH.Store.Manage.Entity.Models;
using ZYH.Store.Manage.Service.Interface;

namespace ZYH.Store.Manage.Core.Api.Controllers
{
    public class EmployeeController:AuthorizeController
    {
        private IEmployeeService service;
        public EmployeeController(IEmployeeService services_)
        {
            service = services_;
        }
        [HttpPost]
        public ActionResult<ResultData<Employee>> Save([FromBody] Employee employee)
        {
            var result = new ResultData<Employee>(service.Save(employee));
            return new ActionResult<ResultData<Employee>>(result);
        }
    }
}
