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
    /// Логика взаимодействия для RegistrPage.xaml
    /// </summary>
    public partial class RegistrPage : Page
    {
        public RegistrPage()
        {
            InitializeComponent();
        }

        private void BtnSave_Click(object sender, RoutedEventArgs e)
        {
            User_authorization user= new User_authorization();
            
            user.Login = TxbLogin.Text;
            user.Password = TxbPassword.Text;
           
            Appdata.db.User_authorization.Add(user);
            Appdata.db.SaveChanges();
            MessageBox.Show("Пользователь был успешно добавлен в базу данных", "Уведомление");
            NavigationService.GoBack();
        }
    }
}
