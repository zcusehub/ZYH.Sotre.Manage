using System;
using System.Collections.Generic;
using System.Text;

namespace ZYH.Common.Models
{
    public class ResultData<T>
    {
        public ResultData(T t)
        {
            Data = t;
        }
        /// <summary>
        /// 返回代码
        /// </summary>
        public int Code { get; set; }
        /// <summary>
        /// 返回数据
        /// </summary>
        public T Data { get; set; }
        /// <summary>
        /// 提示信息
        /// </summary>
        public string Msg { get; set; }
    }
}
