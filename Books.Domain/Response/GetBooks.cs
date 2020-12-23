using System;
using System.Collections.Generic;
using System.Text;

namespace Books.Domain.Response
{
    public class GetBooks
    {
        public int BookID { set; get; }
        public string BookName { set; get; }
    }
}
