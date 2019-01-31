using System; 
using System.Linq;
using System.Reflection; 
using Microsoft.Extensions.DependencyInjection;
using ZYH.Common;
using ZYH.Common.Options;  
using ZYH.Store.Manage.Entity.Models;
using ZYH.Store.Manage.Service.Interface;

namespace ZYH.Store.Manage.Core.Api.Extend
{
    /// <summary>
    /// 自定义相关服务注入入口（口罩）
    /// </summary>
    public static class MyCommonExtends
    {
        #region IServiceCollection 扩展
        /// <summary>
        /// 注入相关的服务(业务逻辑服务)
        /// </summary>
        /// <param name="services"></param>
        /// <returns></returns>
        public static IServiceCollection RegisterMyService(this IServiceCollection services)
        {   //注入EF操作帮助类
            services.AddTransient<ZYHmanageContext>();
            #region
            // services.AddTransient<IDepartmentService, DepartmentService>();//注入具体业务逻辑实现s
            // services.AddTransient<IEmployeeService, EmployeeService>();
            #endregion

            #region 
            //EmployeeService s = new EmployeeService(null);
            //var myservices = AppDomain.CurrentDomain.GetAssemblies().SelectMany(p =>
            //      p.GetTypes().Where(i => i.GetInterfaces().Contains(typeof(IBaseBussiness)))).ToList();


            var pathServices = $"{AppDomain.CurrentDomain.BaseDirectory}Services";
            if (System.IO.Directory.Exists(pathServices))
            {
                var files = System.IO.Directory.GetFiles(pathServices).ToList();
                files.ForEach(p => { services.RegisterServices(p); }); 
            }
            #endregion

            return services;
        }

        public static IServiceCollection RegisterServices(this IServiceCollection services, string dllPath)
        {
            var ass = Assembly.LoadFrom(dllPath);
            var myservices = ass.GetTypes().Where(i => i.GetInterfaces().Contains(typeof(IBaseBussiness))).ToList();
            myservices.ForEach(p =>
            {
                if (p.IsClass)
                {
                    var interfaces = p.GetInterfaces();
                    if (interfaces.Any())
                        services.AddTransient(interfaces[0], p);
                }
            });
            return services;
        }
        /// <summary>
        /// 注入（读取配置文件到自定义配置实体）
        /// </summary>
        /// <param name="services"></param>
        /// <returns></returns>
        public static IServiceCollection RegisterMyOptions(this IServiceCollection services)
        {
            services.Configure<SystemInfo>(ConfigAppSettingsJson.Instance().GetSection("SystemInfo"));
            return services;
        }
        #endregion 
    }
}
