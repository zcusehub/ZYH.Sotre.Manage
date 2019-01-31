using System;
using System.Collections.Generic;
using System.Text;

namespace ZYH.Common
{
    public class BussinessException:Exception
    {
        public int Code { get; set; } = -1;
        public string Msg { get; set; }
    }
}
