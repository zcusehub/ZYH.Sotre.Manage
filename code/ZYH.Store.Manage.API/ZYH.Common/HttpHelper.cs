using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;

namespace ZYH.Common
{ 
    /// <summary>
    /// HTTP 请求帮助类
    /// 通过HttpWebRequest方式请求
    /// </summary>
    public class HttpHelper
    {

        /// <summary>
        /// HTTP发送信息(POST) 
        /// </summary>
        /// <param name="url">请求的url地址</param>
        /// <param name="message">发送消息（JSON字符串格式）</param>
        /// <param name="userName">Authorization用户名账号</param>
        /// <param name="userPwd">Authorization用户名密码</param>
        /// <param name="encodingIn">编码格式 默认utf-8</param>
        /// <returns></returns>
        public static HttpResultData HttpPostJSON(string url, string message, string userName = "admin", string userPwd = "public")
        {
            return HttpRequst(RequstStyle.POST, url, message, userName, userPwd);
        }

        /// <summary>
        /// HTTP Get请求获取消息
        /// </summary>
        /// <param name="url">请求http地址</param>
        /// <param name="userName">用户名</param>
        /// <param name="userPwd">密码</param>
        /// <returns></returns>
        public static HttpResultData HttpGet(string url, string userName = "admin", string userPwd = "public")
        {
            return HttpRequst(RequstStyle.GET, url, "", userName, userPwd);
        }
        #region 私有方法定义
        /// <summary>
        /// HTTP 同步请求公共方法定义
        /// </summary>
        /// <param name="url">请求地址</param>
        /// <param name="message">发送消息（POST需要）</param>
        /// <param name="method">POST/GET</param>
        /// <param name="contentType">默认application/json</param>
        /// <param name="userName">用户名</param>
        /// <param name="userPwd">密码</param>
        /// <param name="encodingIn">编码格式 默认utf-8</param>
        /// <returns></returns>
        private static HttpResultData HttpRequst(RequstStyle requstStyle, string url, string message, string userName = "admin", string userPwd = "public", string contentType = "application/json", string encodingIn = "utf-8")
        {
            try
            {
                Encoding encoding = Encoding.GetEncoding(encodingIn);
                HttpWebRequest request = (HttpWebRequest)WebRequest.Create(url);
                request.Method = requstStyle == RequstStyle.GET ? "GET" : "POST";
                request.ContentType = contentType;
                #region 用户名密码
                if (!string.IsNullOrEmpty(userName) && !string.IsNullOrEmpty(userPwd))
                {
                    request.Credentials = CredentialCache.DefaultCredentials;
                    string code = Convert.ToBase64String(Encoding.ASCII.GetBytes(string.Format("{0}:{1}", userName, userPwd)));
                    string AuthorStr = string.Format("Basic {0}", code);
                    request.Headers.Add("Authorization", AuthorStr);
                }
                #endregion 
                string retString = "";
                if (requstStyle == RequstStyle.GET)
                {
                    retString = GetResponseStr(request, encoding);
                }
                else
                {
                    #region POST 发送数据 
                    using (Stream myRequestStream = request.GetRequestStream())
                    {
                        using (StreamWriter myStreamWriter = new StreamWriter(myRequestStream, encoding))
                        {
                            myStreamWriter.Write(message);
                            myStreamWriter.Flush();
                            retString = GetResponseStr(request, encoding);
                        }
                    }
                    #endregion
                }
                return new HttpResultData() { code = 0, result = retString };
            }
            catch (Exception ex)
            {
                return new HttpResultData() { code = -1, result = ex.Message };
            }
        }

        /// <summary>
        /// 获取Response 返回信息 字符串形式的
        /// </summary>
        /// <param name="request"></param>
        /// <param name="encoding"></param>
        /// <returns></returns>
        private static string GetResponseStr(HttpWebRequest request, Encoding encoding)
        {
            var response = (HttpWebResponse)request.GetResponse();
            var myResponseStream = response.GetResponseStream();
            using (StreamReader myStreamReader = new StreamReader(myResponseStream, encoding))
            {
                string retString = myStreamReader.ReadToEnd();
                return retString;
            }
        }
        #endregion
    }

    #region  公共定义
    /// <summary>
    /// HTTP请求类型
    /// </summary>
    public enum RequstStyle
    {
        POST,
        GET
    }
    /// <summary>
    /// 请求HTTP返回数据实体定义
    /// </summary>
    public class HttpResultData
    {
        /// <summary>
        /// 0 标识成功返回
        /// </summary>
        public int code { get; set; }
        /// <summary>
        /// HTTP 返回数据
        /// </summary>
        public string result { get; set; }
    }
    #endregion
}
