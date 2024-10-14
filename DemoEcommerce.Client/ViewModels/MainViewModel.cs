using System.ComponentModel;
using System.Runtime.CompilerServices;
using DemoEcommerce.Client.Services;

namespace DemoEcommerce.Client.ViewModel
{
    public partial class MainViewModel : INotifyPropertyChanged
    {

       
        private readonly ILocalizationService _localizationService;

        public string PageTitle => _localizationService.GetString("PageTitle");
        public string BotDescription => _localizationService.GetString("BotDescription");
        public string HelloWorld => _localizationService.GetString("HelloWorld");
        public string WelcomeMessage => _localizationService.GetString("WelcomeMessage");
        public string WelcomeDescription => _localizationService.GetString("WelcomeDescription");
        public string ClickMeText => _localizationService.GetString("ClickMeText");
        public string CounterHint => _localizationService.GetString("CounterHint");

        public MainViewModel(ILocalizationService localizationService)
        {
            _localizationService = localizationService;
        }

        public void UpdateLanguage(string languageCode)
        {
            _localizationService.SetLanguage(languageCode);
            OnPropertyChanged(string.Empty); // Notify all properties have changed
        }

        public event PropertyChangedEventHandler PropertyChanged;

        protected virtual void OnPropertyChanged([CallerMemberName] string propertyName = null)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
    }
}