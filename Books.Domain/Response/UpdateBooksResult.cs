using System;
using System.Collections.Generic;
using System.Text;

namespace Books.Domain.Response
{
    public class UpdateBooksResult
    {
        public int BookID { get; set; }
        public string Message { get; set; }
        public string Result { get; set; }
    }
}
