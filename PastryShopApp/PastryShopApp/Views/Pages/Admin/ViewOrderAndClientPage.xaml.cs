﻿using PastryShopApp.Classes;
using PastryShopApp.Model;
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

namespace PastryShopApp.Views.Pages.Admin
{
    /// <summary>
    /// Логика взаимодействия для ViewOrderAndClientPage.xaml
    /// </summary>
    public partial class ViewOrderAndClientPage : Page
    {
        public ViewOrderAndClientPage()
        {
            InitializeComponent();
        }

        private void btnClean_Click(object sender, RoutedEventArgs e)
        {
            txbSearch.Text = "";
        }

        private void btnBack_Click(object sender, RoutedEventArgs e)
        {
            NavigationService.GoBack();
        }

        private void btnEdit_Click(object sender, RoutedEventArgs e)
        {

            var selectedItem = (ClientAndOrder)dataView.SelectedItem;

            if(selectedItem != null)
            {
                NavigationService.Navigate(new EditOrderAndClientPage(selectedItem));
            }
        }

        private void btnRemove_Click(object sender, RoutedEventArgs e)
        {
            ClientAndOrder RemoveClient = (ClientAndOrder)dataView.SelectedItem;
          
            if (RemoveClient != null)
            {
                if (MessageBox.Show("Вы действительно хотите удалить данный элемент?", "Уведомление", MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.Yes)
                {

                    ConnectClass.db.ClientAndOrder.Remove(RemoveClient);
                    ConnectClass.db.SaveChanges();
                    Page_Loaded(null, null);

                }

               
            }

            else
            {
                MessageBox.Show("Вы не выбрали ни одного элемента!", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private void Page_Loaded(object sender, RoutedEventArgs e)
        {

            //listViewData.ItemsSource = ConnectClass.db.ClientAndOrder.ToList();

            dataView.ItemsSource = ConnectClass.db.ClientAndOrder.ToList();

        }

        private void txbSearch_TextChanged_1(object sender, TextChangedEventArgs e)
        {
            dataView.ItemsSource = ConnectClass.db.ClientAndOrder.Where(item => item.ClientRegister.FirstName.Contains(txbSearch.Text) || item.ClientRegister.LastName.Contains(txbSearch.Text) || item.ClientRegister.ClientMoreInfo.Telephone.Contains(txbSearch.Text)).ToList();
        }

        private void btnViewOrder_Click(object sender, RoutedEventArgs e)
        {

            var viewOorder = (ClientAndOrder)dataView.SelectedItem;

            if(viewOorder != null)
            {

                NavigationService.Navigate(new ViewOrderAndClientMorePage(viewOorder));

            }

            else
            {
                MessageBox.Show("Вы не выбрали ни одного элемента!", "Ошибка", MessageBoxButton.OK, MessageBoxImage.Error);
            }

            
        }

        private void btnExit_Click(object sender, RoutedEventArgs e)
        {
            if (MessageBox.Show("Вы уверены что хотите закрыть программу?", "Уведомление", MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.Yes)
            {
                Application.Current.Shutdown();
            }
        }
    }
}
