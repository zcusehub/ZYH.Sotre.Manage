using System;
using System.Collections.Generic;
using System.Text;

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

    }
}
