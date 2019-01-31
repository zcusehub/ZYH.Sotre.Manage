using System;
using System.Collections.Generic;
using System.Text;
using Microsoft.Extensions.Configuration;

namespace ZYH.Common
{

    /// <summary>
    /// appsettings.json配置文件读取帮助类
    /// </summary>
    public class ConfigAppSettingsJson
    {

        private static readonly object lockobj = new object();
        private static ConfigAppSettingsJson instance = null;
        public static ConfigAppSettingsJson Instance()
        {
            if (instance == null)
            {
                lock (lockobj)
                {
                    if (instance == null)
                    {
                        instance = new ConfigAppSettingsJson();
                        IConfigurationBuilder builder = new ConfigurationBuilder();
                        builder.AddJsonFile("appsettings.json");
                        instance.configurationRoot = builder.Build();
                    }
                }
            }
            return instance;
        }

        private IConfigurationRoot configurationRoot = null;
        /// <summary>
        /// 读取AppSettings.Json配置文件值
        /// key 格式是 kkk:kk:k
        /// </summary>
        /// <param name="key"></param>
        /// <returns></returns>
        public string GetValueByKey(string key)
        {
            return configurationRoot[key];
        }
        /// <summary>
        /// 获取配置文件Section
        /// </summary>
        /// <param name="key"></param>
        /// <returns></returns>
        public IConfigurationSection GetSection(string key)
        {
            return configurationRoot.GetSection(key);
        }
    }

}
