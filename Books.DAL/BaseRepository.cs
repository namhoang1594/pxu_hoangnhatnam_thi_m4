using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Text;

namespace Books.DAL
{
    public class BaseRepository
    {
        protected IDbConnection connect;
        public BaseRepository()
        {
            connect = new SqlConnection(@"Data Source=DESKTOP-R93P64C;Initial Catalog=Management_Books;Integrated Security=True");
        }
    }
}
