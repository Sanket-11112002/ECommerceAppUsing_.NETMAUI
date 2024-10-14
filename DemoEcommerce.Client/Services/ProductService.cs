//using DemoEcommerce.Library.ClientModels;
//using DemoEcommerce.Library.Responses;
//using System.Net.Http.Json;
//namespace DemoEcommerce.Client.Services
//{
//    public class ProductService : IProductService
//    {
//        private readonly HttpClient httpClient;
//        public ProductService(HttpClient httpClient)
//        {
//            this.httpClient = httpClient;
//        }

//        //private readonly HttpClient httpClient;

//        //public ProductService()
//        //{
//        //    var handler = new HttpClientHandler();
//        //    handler.ServerCertificateCustomValidationCallback = (sender, cert, chain, sslPolicyErrors) => { return true; };

//        //    // Initialize HttpClient with custom handler
//        //    httpClient = new HttpClient(handler);
//        //}

//        private static string BaseAddress = DeviceInfo.Platform == DevicePlatform.Android ? "https://192.168.22.79:85" : "https://192.168.22.79:85";


//       // private static string BaseAddress = DeviceInfo.Platform == DevicePlatform.Android ? "https://hr2swwjh-7234.uks1.devtunnels.ms" : "https://localhost:7234";
//        public async Task<ServiceResponse> AddProductAsync(ProductModel product)
//        {
//            var response = await httpClient.PostAsJsonAsync($"{BaseAddress}/api/Products", product);
//            var result = await response.Content.ReadFromJsonAsync<ServiceResponse>();
//            return result;
//        }

//        public async Task<List<CategoryModel>> GetCategoriesAsync()
//        {
//            var categories = await httpClient.GetAsync($"{BaseAddress}/api/Products/categories");
//            var response = await categories.Content.ReadFromJsonAsync<List<CategoryModel>>();
//            return response;
//        }

//        public async Task<List<ProductModel>> GetProductsAsync()
//        {
//            var products = await httpClient.GetAsync($"{BaseAddress}/api/Products");
//            var response = await products.Content.ReadFromJsonAsync<List<ProductModel>>();
//            return response;
//        }
//    }
//}


using DemoEcommerce.Library.ClientModels;
using DemoEcommerce.Library.Responses;
using System.Net.Http.Json;
using System.Net.Security;
using System.Security.Cryptography.X509Certificates;

namespace DemoEcommerce.Client.Services
{
    public class ProductService : IProductService
    {
        private readonly HttpClient httpClient;

        public ProductService(HttpClient httpClient)
        {
            var handler = new HttpClientHandler();
            handler.ServerCertificateCustomValidationCallback = ValidateServerCertificate;
            this.httpClient = new HttpClient(handler);
        }

        private static bool ValidateServerCertificate(HttpRequestMessage requestMessage, X509Certificate2 certificate, X509Chain chain, SslPolicyErrors sslPolicyErrors)
        {
            return true;
        }

        private static string BaseAddress = DeviceInfo.Platform == DevicePlatform.Android
            ? "https://192.168.22.79:85"
            : "https://192.168.22.79:85";

        public async Task<ServiceResponse> AddProductAsync(ProductModel product)
        {
            try
            {
                var response = await httpClient.PostAsJsonAsync($"{BaseAddress}/api/Products", product);
                response.EnsureSuccessStatusCode();
                var result = await response.Content.ReadFromJsonAsync<ServiceResponse>();
                return result;
            }
            catch (HttpRequestException e)
            {
                // Log the exception
                Console.WriteLine($"An error occurred: {e.Message}");
                return new ServiceResponse { Success = false, Message = "An error occurred while adding the product." };
            }
        }

        public async Task<List<CategoryModel>> GetCategoriesAsync()
        {
            try
            {
                var response = await httpClient.GetAsync($"{BaseAddress}/api/Products/categories");
                response.EnsureSuccessStatusCode();
                var categories = await response.Content.ReadFromJsonAsync<List<CategoryModel>>();
                return categories;
            }
            catch (HttpRequestException e)
            {
                // Log the exception
                Console.WriteLine($"An error occurred: {e.Message}");
                return new List<CategoryModel>();
            }
        }

        public async Task<List<ProductModel>> GetProductsAsync()
        {
            try
            {
                var response = await httpClient.GetAsync($"{BaseAddress}/api/Products");
                response.EnsureSuccessStatusCode();
                var products = await response.Content.ReadFromJsonAsync<List<ProductModel>>();
                return products;
            }
            catch (HttpRequestException e)
            {
                // Log the exception
                Console.WriteLine($"An error occurred: {e.Message}");
                return new List<ProductModel>();
            }
        }
    }
}