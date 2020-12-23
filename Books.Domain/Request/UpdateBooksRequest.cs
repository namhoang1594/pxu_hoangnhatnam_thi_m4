using System;
using System.Collections.Generic;
using System.Text;

namespace Books.Domain.Request
{
    public class UpdateBooksRequest
    {
        public int BookID { set; get; }
        public string BookName { set; get; }
        public string Author { set; get; }
        public string ShortContents { set; get; }
        public int YearReleased { set; get; }
        public int Amount { get; set; }
        public string CategoryID { get; set; }
    }
}
