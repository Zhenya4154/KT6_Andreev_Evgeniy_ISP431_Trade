using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace PetShopApp.Pages
{
    /// <summary>
    /// Логика взаимодействия для GuestListViewPage.xaml
    /// </summary>
    public partial class GuestListViewPage : Page
    {
        public GuestListViewPage()
        {
            InitializeComponent();
            Init();
            Update();
        }
        public void Init()
        {
            ProductListView.ItemsSource = Data.TradeEntities.GetContext().Product.ToList();
            ManufacturerComboBox.ItemsSource = Data.TradeEntities.GetContext().NameManufacturer.ToList();
        }

        public void Update()
        {

        }

        private void BackButton_Click(object sender, RoutedEventArgs e)
        {
            Classes.Manager.MainFrame.Navigate(new Pages.LoginPage());
        }

        private void SearchProductTextBox_TextChanged(object sender, TextChangedEventArgs e)
        {

        }

        private void ManufacturerComboBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

        }

        private void SortUpRadioButton_Checked(object sender, RoutedEventArgs e)
        {

        }

        private void SortDownRadioButton_Checked(object sender, RoutedEventArgs e)
        {

        }
    }
}
