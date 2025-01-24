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
    /// Логика взаимодействия для ListViewPage.xaml
    /// </summary>
    public partial class ListViewPage : Page
    {
        public ListViewPage()
        {
            InitializeComponent();
            Init();
            Update();
        }

        public void Init()
        {
            try
            {


                ProductListView.ItemsSource = Data.TradeEntities.GetContext().Product.ToList();
                ManufacturerComboBox.ItemsSource = Data.TradeEntities.GetContext().NameManufacturer.ToList();

                var nameManufacturer = Data.TradeEntities.GetContext().NameManufacturer.ToList();
                nameManufacturer.Insert(0, new Data.NameManufacturer { Manufacturer = "Все производители" });
                ManufacturerComboBox.ItemsSource = nameManufacturer;
                ManufacturerComboBox.SelectedIndex = 0;
            }
            catch
            {

            }
        }

        public List<Data.Product> _product = Data.TradeEntities.GetContext().Product.ToList();
        public void Update()
        {
            try
            {
                _product = Data.TradeEntities.GetContext().Product.ToList();

                    _product = (from item in Data.TradeEntities.GetContext().Product.ToList()
                                where item.NameProduct.Product.ToLower().Contains(SearchProductTextBox.Text.ToLower()) 
                                select item).ToList();

                if(SortDownRadioButton.IsChecked == true)
                {
                    _product = _product.OrderByDescending(d => d.ProductCost).ToList();
                }
                if(SortUpRadioButton.IsChecked == true)
                {
                    _product = _product.OrderBy(d => d.ProductCost).ToList();
                }

                var selected = ManufacturerComboBox.SelectedItem as Data.NameManufacturer;
                if(selected != null && selected.Manufacturer != "Все производители")
                {
                    _product = _product.Where(d => d.Id == selected.Id).ToList();
                }
                ProductListView.ItemsSource = _product;
            }
            catch
            {

            }

            
        }
        private void SearchProductTextBox_TextChanged(object sender, TextChangedEventArgs e)
        {
            Update();
        }

        private void ManufacturerComboBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            Update();
        }

        private void SortUpRadioButton_Checked(object sender, RoutedEventArgs e)
        {
            Update();
        }

        private void SortDownRadioButton_Checked(object sender, RoutedEventArgs e)
        {
            Update();
        }

        private void EditButton_Click(object sender, RoutedEventArgs e)
        {
            Classes.Manager.MainFrame.Navigate(new Pages.AddEditPage((sender as Button).DataContext as Data.Product));
        }

        private void DeleteButton_Click(object sender, RoutedEventArgs e)
        {
            MessageBox.Show("В разработке!", "Упс!", MessageBoxButton.OK, MessageBoxImage.Information);
        }

        private void AddButton_Click(object sender, RoutedEventArgs e)
        {
            Classes.Manager.MainFrame.Navigate(new Pages.AddEditPage(null));
        }

        private void BackButton_Click(object sender, RoutedEventArgs e)
        {
            Classes.Manager.MainFrame.Navigate(new Pages.LoginPage());
        }
    }
}
