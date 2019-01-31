using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Options;
using ZYH.Common.Models;
using ZYH.Common.Options;

namespace ZYH.Store.Manage.Core.Api.Controllers
{
    public class TestController: UnAuthorizeController
    {
        private SystemInfo systeminfo = null;

        public TestController(IOptions<SystemInfo> systeminfo_)
        {
            systeminfo = systeminfo_?.Value;
        }
        [HttpGet]
        [Route("Version")]
        public ActionResult<ResultData<SystemInfo>> GetSystemInfo()
        {

            return new ActionResult<ResultData<SystemInfo>>(new ResultData<SystemInfo>(systeminfo));
        }
    }
}
