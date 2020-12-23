using Books.Domain.Request;
using Books.Domain.Response;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace Books.DAL.Interface
{
    public interface IBooksRepository
    {
        Task<IEnumerable<GetBooks>> Gets();
        Task<CreateBooksResult> CreateBooks(CreateBooksRequest request);
        Task<UpdateBooksResult> UpdateBooks(UpdateBooksRequest request);
        Task<DeleteBooksResult> DeleteBooks(DeleteBooksRequest request);
        Task<DetailsBooksResult> DetailsBooks(DetailsBooksRequest request);

    }
}
