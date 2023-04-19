using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web.Http;

namespace WebAPIHostingDemo
{
    public class WAController : ApiController
    {
        public IEnumerable<string> Get() {
            return new[] { "Henry", "Mark", "Mary" };
            }
    }
}
