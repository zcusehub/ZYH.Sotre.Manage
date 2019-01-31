using System;

namespace ZYH.Store.Manage.BLL.Service
{
    
     public class MyAttribute : Attribute
     {
         public string Name { get; set; } = "zhangcong";

        // See the attribute guidelines at 
        //  http://go.microsoft.com/fwlink/?LinkId=85236
        public MyAttribute()
        {
            // TODO: Implement code here
          
        }
    }
    public class Class1 : ITest
    {
        public void GO()
        {
           Console.WriteLine("110");
        }
    }
   [My]
    public interface ITest
    {
     void GO();
    }
    [My]
    public class Class2 : ITest
    {
        public void GO()
        {
            throw new NotImplementedException();
        }
    }
}
