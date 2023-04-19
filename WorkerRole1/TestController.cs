using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Http;

namespace WorkerRole1
{
    public class TestController: ApiController
    {
        [HttpGet]
        public IEnumerable<string> Get()
        {
            return new[] { "Laptop", "Destop", "Mobile", "Printer", "PS2" };
        }
    }
}
