using System.Globalization;
using System.Resources;

namespace DemoEcommerce.Client.Services
{
    public class LocalizationService : ILocalizationService
    {
        private ResourceManager _resourceManager;
        private CultureInfo _currentCulture;

        public LocalizationService()
        {
            _resourceManager = new ResourceManager("DemoEcommerce.Client.Resources.Strings.AppResources", typeof(LocalizationService).Assembly);
            _currentCulture = CultureInfo.CurrentCulture;
        }

        public string GetString(string key)
        {
            return _resourceManager.GetString(key, _currentCulture) ?? key;
        }

        public void SetLanguage(string languageCode)
        {
            _currentCulture = new CultureInfo(languageCode);
            CultureInfo.CurrentCulture = _currentCulture;
            CultureInfo.CurrentUICulture = _currentCulture;
        }
    }


    public interface ILocalizationService
    {
        string GetString(string key);
        void SetLanguage(string languageCode);
    }
}