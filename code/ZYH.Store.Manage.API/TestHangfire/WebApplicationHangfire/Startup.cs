using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Hangfire;
using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Logging;

namespace WebApplicationHangfire
{
    public class Startup
    {
        private string HangfireSqlstring = "Data Source = 192.168.102.180; Initial Catalog = ZYH.manage.hangfire; uid = sa; pwd = 53372047; MultipleActiveResultSets = True;";
        // This method gets called by the runtime. Use this method to add services to the container.
        // For more information on how to configure your application, visit https://go.microsoft.com/fwlink/?LinkID=398940
        public void ConfigureServices(IServiceCollection services)
        {
            //1.首先在ConfigureServices 方法中注册服务
            services.AddHangfire(r => r.UseSqlServerStorage(HangfireSqlstring));

            services.AddMvc().SetCompatibilityVersion(CompatibilityVersion.Version_2_1);
        }

        // This method gets called by the runtime. Use this method to configure the HTTP request pipeline.
        public void Configure(IApplicationBuilder app, IHostingEnvironment env, ILoggerFactory loggerFactory)
        {
            loggerFactory.AddConsole();
            if (env.IsDevelopment())
            {
                app.UseDeveloperExceptionPage();
            }
            //2.然后在Configure 方法中加入HangfireServer及HangfireDashboard：
            app.UseHangfireServer();
            app.UseHangfireDashboard();

            //3.添加定时任务
            TesthangfireAddTask(app);
            //app.Run(async (context) =>
            //{
            //    await context.Response.WriteAsync("Hello from ASP.NET Core!");
            //});
            app.UseMvc(routes =>
                {
                    routes.MapRoute(
                        name: "default",
                        template: "{controller=HangfireTest}/{action=index}/{id?}");
                });
            app.UseStaticFiles();

        }
        /// <summary>
        /// 添加任务
        /// </summary>
        private void TesthangfireAddTask(IApplicationBuilder app)
        {
            app.Map("/index", r =>
            {
                r.Run((context) =>
                {
                    //任务每分钟执行一次
                    RecurringJob.AddOrUpdate(() => Console.WriteLine($"ASP.NET Core LineZero"), Cron.Minutely());
                    return context.Response.WriteAsync("ok");
                });
            });
            app.Map("/one", r =>
            {
                r.Run(context =>
                    {
                        ////任务执行一次
                        BackgroundJob.Enqueue(() => Console.WriteLine($"Only Execute one LineZero{DateTime.Now}"));
                        return context.Response.WriteAsync("ok");
                    });
            });
            app.Map("/await", r =>
            {
                r.Run((context) =>
                {
                    //任务延时一分钟执行
                    BackgroundJob.Schedule(() => Console.WriteLine($"awiait 1 minutues {DateTime.Now}"),
                        TimeSpan.FromMinutes(1));
                    return context.Response.WriteAsync("ok");
                });
            });
        }
    }
}
