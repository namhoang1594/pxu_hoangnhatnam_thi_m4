using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace BooksAPI.Controllers
{
    public class BooksController : Controller
    {
        private readonly IBooksService bookService;

        public BooksController(IBooksService bookService)
        {
            this.bookService = bookService;
        }
        [HttpGet]
        [Route("/api/book/gets")]
        public async Task<OkObjectResult> Gets()
        {
            return Ok(await bookService.Gets());
        }
        [HttpPost]
        [Route("/api/book/create")]
        public async Task<OkObjectResult> Create(CreateBooksRequest request)
        {
            return Ok(await bookService.CreateBooks(request));
        }
        [HttpPut]
        [Route("/api/book/update")]
        public async Task<OkObjectResult> Update(UpdateBooksRequest request)
        {
            return Ok(await bookService.UpdateBooks(request));
        }
        [HttpDelete]
        [Route("/api/book/delete")]
        public async Task<OkObjectResult> Delete(DeleteBooksRequest request)
        {
            return Ok(await bookService.DeleteBooks(request));
        }
        [HttpPost]
        [Route("/api/book/details")]
        public async Task<OkObjectResult> Details(DetailsBooksRequest request)
        {
            return Ok(await bookService.DetailsBooks(request));
        }
    }
}
