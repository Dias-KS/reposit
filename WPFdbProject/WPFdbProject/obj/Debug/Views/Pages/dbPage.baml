   M S B A M L   `   `   `  ����G  CWPFdbProject, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:WPFdbProject.Views.PagesWPFdbProject.Views.Pages  5      %    WPFdbProject.Views.Pages.dbPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      8local&clr-namespace:WPFdbProject.Views.Pages     5      -   5          N� Title$  dbPage��5	      .��5      �  � RowDefinitions 5   
   �� 5      $��50 �6   6*   �� 5      6   .+�5   
   ��  �� Orientation$ 
Horizontal=�6   .+�5      �� -   5         ��Name$ 
BtnAddClic��5      $��Добавить��5      $	��100��5      $��30��5      $��5 0 0 0q�5      �� 5      -   5        $ BtnDeleteClic��5      $��Удалить��5      $	��100��5      $��30��5      $��5 0 0 0q�5      5      &   System.Windows.Controls.DataGrid  5    
   -   5          Name$ DataGridRegistration��5        $��1��6      ColumnWidth5  /System.Windows.Controls.DataGridLengthConverter$ * 6>      AutoGenerateColumns .     
IsReadOnly .    Columns 5!      0  *System.Windows.Controls.DataGridTextColumn  5"      ,  &System.Windows.Controls.DataGridColumn	   Header$	 Курс��6%   1  +System.Windows.Controls.DataGridBoundColumn
   Binding
 63   �� *Course.Title+6X     5#      $	 Тренер��6%   
 65   �� *Trainer.NAME+6Z     5$      $	 Дата начала��6%   
 6:   �� *CreatedDate+6]     5%      $	 Балл��6%   
 63   �� *
TotalPoint+6U     5&      $	 Завершёен��6%   
 68   �� *IsDone+6V     5'      $	 Комментарий��6%   
 6:   �� *	Comment+6Y   4  .System.Windows.Controls.DataGridTemplateColumn  5)         CellTemplate 5*      �� 5+      .R�5,      �� $ btnEdit��6%   $	��100��5-   %   $��30��5.   %   51      53      55      56      57      