   M S B A M L   `   `   `  ����N  JProgrammProductsApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullQ-clr-namespace:ProgrammProductsApp.Views.PagesProgrammProductsApp.Views.Pages  5      0    *ProgrammProductsApp.Views.Pages.dbViewPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      ?local-clr-namespace:ProgrammProductsApp.Views.Pages     5      -   5          N� Title$  
dbViewPage��5	      .��5      �  � RowDefinitions 5   
   �� 5      $	��31* �6   �� 5      $
��159* �6   �� 5      $	��35* �6   .+�5   
   � $��0��6   .+�5      ��  �� Orientation$ 
Horizontal=�6   $��Center=�5      $��Center=�5      .+�5      �� $��Поиск :��6   $��0 0 10 0q�5      �� 5      -   5         ��Name$ 	txtSearch��5       $	��200��5      5!      5#      �� 5%      $ Vertical=�6   $��5 5 0 0q�5&      .+�5(      �� -   5        $3��-Наибольшая номенклатура��5(      5*      �� 5,      -   5         ��Name$
 chk2��5.      $G��AОпределить затраты на приобретение��5,      $��0 5 0 0q�50      �� 52      -   5        $
 chk3��53      $S��MПродукты типа ОС по убыванию популярности��52      $��0 5 0 0q�56      57      58      � 5:   
   $��1��6   .+�5;      &   System.Windows.Controls.DataGrid  -   5          Name$ dbView��5<      $��10q�5;         AutoGenerateColumns .     ColumnWidth5  /System.Windows.Controls.DataGridLengthConverter$ * 5>         Columns 5?      0  *System.Windows.Controls.DataGridTextColumn  5@      ,  &System.Windows.Controls.DataGridColumn	   Header$	 ID��6)   
   Width$

 0.2* 6M   1  +System.Windows.Controls.DataGridBoundColumn   Binding 65   �� *ID+6M     5A      $'	 !Название продукта��6)   $

 0.9* 6e    6D   �� *NameProduct+6e     5B      $	 Версия��6)   $

 0.5* 6V    69   �� *	Version+6V     5C      $	 Тип��6)   $

 0.4* 6]    66   �� *TypeProduct.Title+6]     5D      $	 
Фирма��6)   $

 0.6* 6R    68   �� *Firm+6R     5E      $&	  Кол-во скачиваний��6)   $

 0.9* 6k    6D   �� *QuantityDownoload+6k     5F      $	 Дата выпуска��6)   $

 0.8* 6�    6?   �� *ReleaseDate+ �� StringFormat$ {0: dd MMMM yyyy}��6�     5G      $)	 #Прикладная область��6)   $

 1.1* 6p    6E   �� *ApplicationArea.Title+6p     5H      $)	 #Стоимость лицензии��6)   $

 1.1* 6h    6E   �� *CostOfLicense+6h   5J      5K      � 5M   
   $��2��6   .+�5N      �� $ 
Horizontal=�6   $��Center=�5O      $��Center=�5P      .+�5R      �� -   5         ��Name$ btnAdd��5R      $��Добавить��5S      $	��100��5T      5U      �� 5X      -   5        $ btnEdit��5X      $ ��Редактировать��5Y      $	��100��5Z      $��5 0 5 0q�5[      5\      �� 5^      -	   5        $ 	btnDelete��5^      $��Удалить��5_      $	��100��5`      5a      �� 5c      $ 
Horizontal=�6   $��Right=�5d      $��Center=�5e      $��5 0 0 0q�5f      .+�5h      �� -
   5        $ 
btnGetInfo��5h      $	��100��5i      $��Подробнее��5j      5k      5m      5q      5s      5u      5v      