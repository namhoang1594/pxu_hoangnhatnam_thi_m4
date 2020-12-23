using Books.DAL.Interface;
using Books.Domain.Request;
using Books.Domain.Response;
using Dapper;
using System;
using System.Collections.Generic;
using System.Data;
using System.Text;
using System.Threading.Tasks;

namespace Books.DAL
{
    public class BooksAPIRepository : BaseRepository, IBooksRepository
    {
        public async Task<IEnumerable<GetBooks>> Gets()
        {
            return await SqlMapper.QueryAsync<GetBooks>(cnn: connect,
                                                sql: "sp_GetBooks",
                                                commandType: CommandType.StoredProcedure);
        }
        public async Task<CreateBooksResult> CreateBooks(CreateBooksRequest request)
        {
            try
            {
                DynamicParameters parameters = new DynamicParameters();
                parameters.Add("@BookName", request.BookName);
                parameters.Add("@Author", request.Author);
                parameters.Add("@ShortContents", request.ShortContents);
                parameters.Add("@YearReleased", request.YearReleased);
                parameters.Add("@Amount", request.Amount);
                parameters.Add("@CategoryID", request.CategoryID);
                return await SqlMapper.QueryFirstOrDefaultAsync<CreateBooksResult>(cnn: connect,
                                                    sql: "sp_CreateBooks",
                                                    param: parameters,
                                                    commandType: CommandType.StoredProcedure);
            }
            catch (Exception ex)
            {

                throw;
            }
        }
        public async Task<UpdateBooksResult> UpdateBooks(UpdateBooksRequest request)
        {
            try
            {
                DynamicParameters parameters = new DynamicParameters();
                parameters.Add("@BookID", request.BookID);
                parameters.Add("@BookName", request.BookName);
                parameters.Add("@Author", request.Author);
                parameters.Add("@ShortContents", request.ShortContents);
                parameters.Add("@YearReleased", request.YearReleased);
                parameters.Add("@Amount", request.Amount);
                parameters.Add("@CategoryID", request.CategoryID);
                return await SqlMapper.QueryFirstOrDefaultAsync<UpdateBooksResult>(cnn: connect,
                                                    sql: "sp_UpdateBooks",
                                                    param: parameters,
                                                    commandType: CommandType.StoredProcedure);
            }
            catch (Exception ex)
            {

                throw;
            }
        }
        public async Task<DeleteBooksResult> DeleteBooks(DeleteBooksRequest request)
        {
            try
            {
                DynamicParameters parameters = new DynamicParameters();
                parameters.Add("@BookID", request.BookID);
                return await SqlMapper.QueryFirstOrDefaultAsync<DeleteBooksResult>(cnn: connect,
                                                    sql: "sp_DeleteBooks",
                                                    param: parameters,
                                                    commandType: CommandType.StoredProcedure);
            }
            catch (Exception ex)
            {

                throw;
            }
        }
        public async Task<DetailsBooksResult> DetailsBooks(DetailsBooksRequest request)
        {
            try
            {
                DynamicParameters parameters = new DynamicParameters();
                parameters.Add("@BookID", request.BookID);
                return await SqlMapper.QueryFirstOrDefaultAsync<DetailsBooksResult>(cnn: connect,
                                                    sql: "sp_BookDetails",
                                                    param: parameters,
                                                    commandType: CommandType.StoredProcedure);
            }
            catch (Exception ex)
            {

                throw;
            }
        }
    }
}
