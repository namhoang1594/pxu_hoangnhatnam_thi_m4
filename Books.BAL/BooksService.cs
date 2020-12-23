using Books.BAL.Interface;
using Books.DAL.Interface;
using Books.Domain.Request;
using Books.Domain.Response;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace Books.BAL
{
    public class BooksService : IBooksService
    {
        private readonly IBooksRepository bookRepository;
        public BooksService(IBooksRepository bookRepository)
        {
            this.bookRepository = bookRepository;
        }
        public async Task<IEnumerable<GetBooks>> Gets()
        {
            return await bookRepository.Gets();
        }
        public async Task<CreateBooksResult> CreateBooks(CreateBooksRequest request)
        {
            return await bookRepository.CreateBooks(request);
        }
        public async Task<UpdateBooksResult> UpdateBooks(UpdateBooksRequest request)
        {
            return await bookRepository.UpdateBooks(request);
        }
        public async Task<DeleteBooksResult> DeleteBooks(DeleteBooksRequest request)
        {
            return await bookRepository.DeleteBooks(request);
        }
        public async Task<DetailsBooksResult> DetailsBooks(DetailsBooksRequest request)
        {
            return await bookRepository.DetailsBooks(request);
        }
    }
}
