﻿using System;
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
    /// Логика взаимодействия для editPage.xaml
    /// </summary>
    public partial class editPage : Page
    {
        public editPage(Products products)
        {
            InitializeComponent();
            DataContext= products;
        }

        private void BtnSave_Click(object sender, RoutedEventArgs e)
        {
            
            Appdata.db.SaveChanges();
            NavigationService.GoBack();
        }
    }
}
