   M S B A M L   `   `   `  ����H  DWpfAuthSystem, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullE'clr-namespace:WpfAuthSystem.Views.PagesWpfAuthSystem.Views.Pages  5      -    'WpfAuthSystem.Views.Pages.AdminViewPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      9local'clr-namespace:WpfAuthSystem.Views.Pages     5      -   5          N� Title$  AdminViewPage��5	      .��5      �  � RowDefinitions 5   
   �� 5      $
��0.5* �6   �� 5      $��* �6   �� 5      $
��0.5* �6   .+�5   
    � -   5          �Name$ AdminADDPage��5        � NavigationUIVisibility$ Hidden=�6'    � 5   
   -   5        $ AdminEditPage��5      $ Hidden=�6'    � 5   
   -   5        $ backAuth��5      $ Hidden=�6'   � 5   
   $��0��6   
������.+�5      �� $��Center=�6   $��Center=�5       �� Orientation$ 
Horizontal=�5      $��0 0 60 0q�5      .+�5      �� $��Поиск: ��6   $��14(�5       �� 5#      -   5         ��Name$ 	txtSearch��5#      $	��250��5$      $��10 0 0 0q�5%      5&      5(      �� 5*      $ 
Horizontal=�6   $��Center=�5+      $��Center=�5,      $��	0 0 660 0q�5-      .+�5/      �� -   5         ��Name$ btnBack��5/      $	��100��50      $��
Назад��51      $��25��53      $��12(�54      57      5:      � 5=   
   $��1��6   
����� �.+�5?      &   System.Windows.Controls.DataGrid  -   5          Name$ dataView��5@      $��10q�5?         ColumnWidth5  /System.Windows.Controls.DataGridLengthConverter$ * 5A      	   AutoGenerateColumns	 .  
   
IsReadOnly
 .    Columns 5F      0  *System.Windows.Controls.DataGridTextColumn  5H      ,  &System.Windows.Controls.DataGridColumn   Header$ ID��6)      Width$
 0.3* 6T   1  +System.Windows.Controls.DataGridBoundColumn   Binding 65   �� *
Company.ID+6T     5I      $5 /Наименование предприятия��6)    6K   �� *Company.NameCompany+  5J      $% Дата регистрации��6)    6C   �� *Company.DateOfRegistration+  5K      $&  Кол-во работников��6)    6D   �� *Company.QuantityOfEmployees+  5L      $0 *Основной вид продукции��6)    6I   �� *Company.MainTypeProduct+  5M      $% Явл. ли передовым��6)    6D   �� *Company.AdvancedOr+  5N      $ Прибыль��6)    6:   �� *Company.Price+  5O      $' !Название продукта��6)    6D   �� *Product.NameProduct+  5P      $' !Вид собственности��6)    6D   �� *Company.TypeOfProperty+  5Q      $ Примечание��6)    6=   �� *Company.Comment+5U      5W      � 5Z   
   $��2��6   
������.+�5\      �� $��Center=�6   $��Center=�5]      $ 
Horizontal=�5^      .+�5`      �� -   5        $ btnADD��5`      $��Добавить��5a      $	��200��5b      $��12(�5c      �� 5f      -	   5        $ btnEdit��5f      $ ��Редактировать��5g      $	��200��5h      $��	10 0 10 0q�5i      $��12(�5j      �� 5l      -
   5        $ 	btnRemove��5l      $��Удалить��5m      $	��200��5n      $��12(�5o      5p      5r      5v      5x      5y      