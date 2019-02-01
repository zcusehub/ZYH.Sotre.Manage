using System;
using System.Collections.Generic;
using System.Text;
using System.Text.RegularExpressions;

namespace ZYH.Common
{
    /// <summary>
    /// 定义公共方法
    /// </summary>
    public class ZYHHelper
    {
        public static void ThrowException(string msg, int code = -1)
        {
            var excepetion=new BussinessException();
            excepetion.Code = code;
            excepetion.Msg = msg; 
            throw excepetion;
        }

        /// <summary>
        /// 获取GUID不带 - 的字符串
        /// </summary>
        /// <returns></returns>
        public static string GetGUIDStr()
        {
            var str = Guid.NewGuid().ToString();
            return Regex.Replace(str,"-","");
        }
    }
}
