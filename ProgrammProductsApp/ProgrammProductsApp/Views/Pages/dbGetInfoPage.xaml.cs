﻿using ProgrammProductsApp.Classes;
using ProgrammProductsApp.Models;
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

namespace ProgrammProductsApp.Views.Pages
{
    /// <summary>
    /// Логика взаимодействия для dbGetInfoPage.xaml
    /// </summary>
    public partial class dbGetInfoPage : Page
    {

        private Product selectedItem;

        public dbGetInfoPage()
        {
            InitializeComponent();
        }

        public dbGetInfoPage (Product selectedItem)
        {
            InitializeComponent();
            this.selectedItem = selectedItem;
        }


        private void btnBack_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.GoBack();
        }

        private void Page_Loaded(object sender, RoutedEventArgs e)
        {
            dbGetInfo.ItemsSource = dbConnectClass.db.Product.Where(item => item.IDService == selectedItem.Service.ID && item.IDUser == selectedItem.User.ID).ToList();
        }
    }
}
