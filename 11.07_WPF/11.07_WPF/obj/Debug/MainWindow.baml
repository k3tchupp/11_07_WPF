   M S B A M L   `   `   `  ����D  @11.07_WPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null)clr-namespace:_11._07_WPF_11._07_WPF  5   	       _11._07_WPF.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   +localclr-namespace:_11._07_WPF     5   	     � Title$  
MainWindow��5   	   $	��720��6   $
��1280��6)   .��5	      �  � ColumnDefinitions 5
   
   �� 5      �� 5      �� 5      �� 5       � RowDefinitions 5   
   �� 5      $��4* �6   �� 5      �� 5      $
��0.5* �6   �� 5      $
��0.5* �6   �� 5      $
��0.5* �6   .+�5   
   &   System.Windows.Controls.DataGrid  -   5          Name$ dgAdatok��5      $��4��5         Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$
 Név��6%      Width5  /System.Windows.Controls.DataGridLengthConverter$	 120 5   %   1  +System.Windows.Controls.DataGridBoundColumn   Binding 5   %   �� *Name+  5      $ Ország��6%   $	 120 5   %    5    %   �� *	Country+  5!      $ Alapítás éve��6%   $	 120 5"   %    5#   %   �� *	Founded+  5$      $ Iparterület��6%   $	 120 5%   %    5&   %   �� *
Industry+  5'      $ Dolgozók száma��6%   $	 120 5(   %    5)   %   �� *EmployeesNumber+5+      �� 5-   
   $��Szűrés ország szerint��6   $��1��5.      $��Center=�5/      $��Center=�50      $��26(�51      �� 52   
   -   5         ��Name$ cbOrszag��52      $��1��53      $��1��54      $��50��55      $	��250��56      �� 58   
   $��Szűrés év szerint��6   $��1��59      $��2��5:      $��Center=�5;      $��Center=�5<      $��26(�5=      �� 5>   
   -   5        $
 cbEv��5>      $��1��5?      $��3��5@      $��50��5A      $	��250��5B      �� 5D   
   $��Azonosító��6   $��22(�5E      $��2��5F      $��Center=�5G      $��Center=�5H      �� 5I   
   -   5        	 ��Name$	 lblAzonosito��5I      $�� ��5J      $��22(�5K      $��1��5L      $��2��5M      $��Center=�5N      $��Center=�5O      �� 5R   
   $��Webcím��6   $��22(�5S      $��3��5T      $��Center=�5U      $��Center=�5V      �� 5W   
   -   5        $	 	lblWebcim��5W      $�� ��5X      $��22(�5Y      $��1��5Z      $��3��5[      $��Center=�5\      $��Center=�5]      �� 5`   
   $��Leírás��6   $��22(�5a      $��4��5b      $��Center=�5c      $��Center=�5d      �� 5e   
   -   5        $	 	lblLeiras��5e      $�� ��5f      $��22(�5g      $��1��5h      $��4��5i      $��Center=�5j      $��Center=�5k      �� 5m   
   $��Alkalmazottak száma��6   $��22(�5n      $��2��5o      $��2��5p      $��3��5q      $��Center=�5r      $��Center=�5s      �� 5u   
   -   5        $	 lblAlkalmazottak��5u      $�� ��5v      $��3��5w      $��2��5x      $��3��5y      $��22(�5z      $��Center=�5{      $��Center=�5|      5}      5~      