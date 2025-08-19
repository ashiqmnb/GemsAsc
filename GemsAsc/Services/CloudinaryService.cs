using CloudinaryDotNet;
using CloudinaryDotNet.Actions;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.Entity;
using System.Linq;
using System.Security.Principal;
using System.Threading.Tasks;
using System.Web;

namespace GemsAsc.Services
{
    public class CloudinaryService
    {
        private readonly Cloudinary _cloudinary;

        public CloudinaryService()
        {

            var cloudName = ConfigurationManager.AppSettings["CLOUDINARY_CLOUD_NAME"];
            var apiKey = ConfigurationManager.AppSettings["CLOUDINARY_API_KEY"];
            var apiSecret = ConfigurationManager.AppSettings["CLOUDINARY_API_SECRET"];

            if (string.IsNullOrEmpty(cloudName) || string.IsNullOrEmpty(apiKey) || string.IsNullOrEmpty(apiSecret))
            {
                throw new Exception("Cloudinary configuration is missing or incomplete");
            }

            var account = new Account(cloudName, apiKey, apiSecret);
            _cloudinary = new Cloudinary(account);
        }


        public async Task<string> UploadProfileImageAsync(HttpPostedFile file)
        {
            
            if (file == null || file.ContentLength == 0) return null;

            using (var stream = file.InputStream)
            {
                var uploadParams = new ImageUploadParams
                {
                    File = new FileDescription(file.FileName, stream),
                    Transformation = new Transformation().AspectRatio("3:4").Crop("fill")
                };

                var uploadResult = await _cloudinary.UploadAsync(uploadParams);
                return uploadResult.SecureUrl.ToString();
            }
        }

        public async Task<string> UploadImageAsync(HttpPostedFile file)
        {

            if (file == null || file.ContentLength == 0) return null;

            using (var stream = file.InputStream)
            {
                var uploadParams = new ImageUploadParams
                {
                    File = new FileDescription(file.FileName, stream),
                    Transformation = new Transformation().Quality("auto").FetchFormat("auto")
                };

                var uploadResult = await _cloudinary.UploadAsync(uploadParams);
                return uploadResult.SecureUrl.ToString();
            }
        }
    }
}