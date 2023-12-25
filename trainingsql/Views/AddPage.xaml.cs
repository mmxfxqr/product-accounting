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
    /// Логика взаимодействия для AddPage.xaml
    /// </summary>
    public partial class AddPage : Page
    {
        public AddPage()
        {
            InitializeComponent();
                      
        }

        private void BtnSave_Click(object sender, RoutedEventArgs e)
        {
            Products product = new Products();            
            product.Name = TxbName.Text;
            product.Amount = TxbAmount.Text;           
            product.Price = decimal. Parse(TxbPrice.Text);
            product.Type = TxbType.Text;

            Appdata.db.Products.Add(product);
            Appdata.db.SaveChanges();
            MessageBox.Show("Товар был успешно добавлен в базу данных", "Уведомление");
            NavigationService.GoBack();
        }

 
    }
}
