using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.HttpsPolicy;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Logging;
using Microsoft.Extensions.Options;
using ZYH.Store.Manage.Core.Api.Extend;
using ZYH.Store.Manage.Entity.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Diagnostics;
using Newtonsoft.Json;
using ZYH.Common;
using ZYH.Common.Models;

namespace ZYH.Store.Manage.Core.Api
{
    public class Startup
    {
        public Startup(IConfiguration configuration)
        {
            Configuration = configuration;
        }

        public IConfiguration Configuration { get; }

        // This method gets called by the runtime. Use this method to add services to the container.
        public void ConfigureServices(IServiceCollection services)
        {
            services.AddMvc().SetCompatibilityVersion(CompatibilityVersion.Version_2_1);
            services.RegisterMyService();//1 注入自定义的服务  依赖注入
            services.RegisterMyOptions();//2 注入配置文件
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IHostingEnvironment env)
        {
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
            }
            else
            {
                app.UseHsts();
            }

            app.UseHttpsRedirection();
            //跨域
            //app.UseCors("AllowSpecificOrigins");
            //20190130全局异常捕获处理
            app.UseExceptionHandler(m =>
            {
                m.Run(async context => await ErrorEvent(context));
            });
            app.UseMvc();
        }
        //2.注册全局异常捕获 处理全局未处理异常，
        public Task ErrorEvent(HttpContext context)
        {
            var feature = context.Features.Get<IExceptionHandlerFeature>();
            var error = feature?.Error;
            var bus = error as BussinessException;
            ResultData<string> data = new ResultData<string>("");
            if (bus != null)
            {
                data.Msg = bus.Msg;
                data.Code = bus.Code; 
            }
            else
            {
                data.Msg = error.ToString();
                data.Code = -999;
            }

            var str = JsonConvert.SerializeObject(data);
            return context.Response.WriteAsync(str);
        }

    }
}
