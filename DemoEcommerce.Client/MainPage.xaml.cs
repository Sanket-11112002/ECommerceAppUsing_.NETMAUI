using DemoEcommerce.Client.Services;
using DemoEcommerce.Client.ViewModel;


namespace DemoEcommerce.Client
{
  public partial class MainPage : ContentPage
    {
        int count = 0;

        public MainPage()
        {
            InitializeComponent();
            DependencyService.Register<ILocalizationService, LocalizationService>();

            // Create instances
            var localizationService = DependencyService.Get<ILocalizationService>();
            var mainViewModel = new MainViewModel(localizationService);

            // Set the BindingContext
            BindingContext = mainViewModel;
        }

        private void OnCounterClicked(object sender, EventArgs e)
        {
            count++;

            if (count == 1)
                CounterBtn.Text = $"Clicked {count} time";
            else
                CounterBtn.Text = $"Clicked {count} times";

            SemanticScreenReader.Announce(CounterBtn.Text);
        }

        private void OnLanguageSelected(object sender, EventArgs e)
        {
            var selectedLanguage = LanguagePicker.SelectedItem as string;
            string languageCode = "en"; // Default to English

            switch (selectedLanguage)
            {
                case "Spanish":
                    languageCode = "es";
                    break;
                case "French":
                    languageCode = "fr";
                    break;
            }

    (BindingContext as MainViewModel)?.UpdateLanguage(languageCode);
        }
    }

}
