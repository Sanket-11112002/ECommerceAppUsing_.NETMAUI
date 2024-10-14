using DemoEcommerce.Client.Services;
using DemoEcommerce.Client.ViewModel;
using DemoEcommerce.Client.ViewModels;

namespace DemoEcommerce.Client.Views.Desktop;

public partial class DesktopHomePage : ContentPage
{
	public DesktopHomePage(DesktopHomePageViewModel desktopHomePageViewModel)
	{
		InitializeComponent();
		BindingContext = desktopHomePageViewModel;

       
    }
}