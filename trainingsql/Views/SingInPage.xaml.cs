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
    /// Логика взаимодействия для SingInPage.xaml
    /// </summary>
    public partial class SingInPage : Page
    {
        public SingInPage()
        {
            InitializeComponent();
        }

       

        private void BtnSing_Click(object sender, RoutedEventArgs e)
        {
            var CureentUser = Appdata.db.User_authorization.FirstOrDefault(u => u.Login == TxbLogin.Text && u.Password == TxbPassword.Text);
            if (CureentUser != null)
            {
                NavigationService.Navigate(new DataPage());
            }
            else 
            {
                MessageBox.Show("Данного пользователя нет в базе данных, пожалуйста зарегестрируйтесь", "Уведомление");
            }
        }

        private void BtnReg_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new RegistrPage());
        }
    }
}
