   M S B A M L   `   `   `  ����F  Btrainingsql, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:trainingsql.Viewstrainingsql.Views  5           trainingsql.Views.DataPage   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      1localclr-namespace:trainingsql.Views     5      -   5          N� Title$  DataPage��5
      .��5      � ���#699dd1 � RowDefinitions 5   
   �� 5      $��60 �6   �� 5      $��* �6   �� 5      $��60 �6   .+�5   
   �� $��0��6   $��Right=�6"   $��Center=�6>    �� Orientation$ 
Horizontal=�6Y   .+�5      �� $��16(�6   $��Найти:��6&   $��	10 0 10 0q�64   6J   �� 5      -   5         ��Name$ 	TxbSearch��5      $	��150��6M   $��16(�6Z   $��5 0 20 0q�6h   6}   5      �� 5   
   -   5        $��BtnBack��5      $��20��6!   $��5q�6-   $	��100��68   $
��Left=�6D   $��
Назад��6_   6o   &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ ProductGrid��5      $��1��5         AutoGenerateColumns .  ���#FFE4E1   Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ ID��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$ * 61   1  +System.Windows.Controls.DataGridBoundColumn	   Binding	 6;   �� *	idProduct+  5      $
 Name��6%   $ * 63   	 6=   �� *Name+  5      $ Amount��6%   $ * 65   	 6?   �� *Amount+  5       $ Price��6%   $ * 64   	 6>   �� *Price+
 �� StringFormat$
 
{0:N2} ₽��  5!      $
 Type��6%   $ * 63   	 6=   �� *Type+5#      �� 5%   
   $��2��6   $ 
Horizontal=�5&      $��Center=�5'      $��Center=�5(      .+�5*      �� -   5        $��BtnAdd��5*      $��24��6#   $	��150��6/   $��Добавить��6;   $��10q�6N   6Z   �� 5+      -   5        $��BtnEdit��5+      $��24��6$   $	��150��60   $ ��Редактировать��6<   $��10q�6T   6`   �� 5,      -   5        $��	BtnDeleat��5,      $��24��6&   $	��150��62   $��Удалить��6>   $��10q�6P   6\   5-      5.      5/      