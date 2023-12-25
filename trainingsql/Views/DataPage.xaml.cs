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
using trainingsql.Model;

namespace trainingsql.Views
{
    /// <summary>
    /// Логика взаимодействия для DataPage.xaml
    /// </summary>
    public partial class DataPage : Page
    {
        public DataPage()
        {
            InitializeComponent();
        }


        private void BtnBack_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.GoBack();
        }

        private void Page_Loaded(object sender, RoutedEventArgs e)
        {
            ProductGrid.ItemsSource = Appdata.db.Products.ToList();
        }


        private void BtnAdd_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new AddPage());
        }

        private void BtnEdit_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new editPage(ProductGrid.SelectedItem as Products));

        }

        private void BtnDeleat_Click(object sender, RoutedEventArgs e)
        {
            if (MessageBox.Show("Вы действительно хотите удалить товар?", "Предупреждение", MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.Yes)
            {
                var currentProduct = ProductGrid.SelectedItem as Products;
                Appdata.db.Products.Remove(currentProduct);
                Appdata.db.SaveChanges();
                ProductGrid.ItemsSource = Appdata.db.Products.ToList();
                MessageBox.Show("Товар был успешно удалён");
            }
        }

        private void TxbSearch_TextChanged(object sender, TextChangedEventArgs e)
        {
            try 
            {
            ProductGrid.ItemsSource = Appdata.db.Products.Where(item => item.Name == TxbSearch.Text || item.Name.Contains(TxbSearch.Text)).ToList();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Произошла ошибка " + ex.ToString(), "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }
    }
}
