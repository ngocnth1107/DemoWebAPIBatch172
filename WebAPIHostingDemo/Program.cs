using Microsoft.Owin.Hosting;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;

namespace WebAPIHostingDemo
{
    internal class Program
    {
        static void Main(string[] args)
        {
            WebApp.Start<StartupService>(url: "http://localhost:9095/");
            HttpClient client = new HttpClient();
            Task<HttpResponseMessage> resp = client.GetAsync("http://localhost:9095/owin/WA");
            var response = resp.Result;
            Task<String> respMessage = response.Content.ReadAsStringAsync();
            Console.WriteLine(respMessage.Result);
            Console.WriteLine(response);
            Console.ReadLine();
        }
    }
}
