   M S B A M L   `   `   `  ����J  FImageOverlay2.0, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:ImageOverlay2._0.BehaviorsImageOverlay2._0.Behaviors  5   	   3clr-namespace:ImageOverlay2._0ImageOverlay2._0  5   	   !    ImageOverlay2._0.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   >	behaviors(clr-namespace:ImageOverlay2._0.Behaviors     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   /dataclr-namespace:ImageOverlay2._0     5   	   c _System.Windows.Interactivity, Version=4.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35Bi:http://schemas.microsoft.com/expression/2010/interactivity  5   	   Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  5   	   X TXceed.Wpf.Toolkit, Version=3.1.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f44xctk)http://schemas.xceed.com/wpf/xaml/toolkit  5	   	   -   5          �Name$  Window��5
   	    � Title$ 
MainWindow��5   	    � AllowsTransparency . 
������  � 
ResizeMode$ 	CanResize=�5   	    � WindowStartupLocation$ CenterScreen=�5   	    � WindowState$ 	Maximized=�5   	    � WindowStyle$
 None=�5   	    � Topmost 5   	   �� *IsAllwaysOnTop+ J� InputBindings 5      �� 5   
   
	 �� Key$	 O��6   
 �� 	Modifiers$
 Controlf�5       �� Command 5      �� *ImportImageCommand+5      .  (System.Windows.Interactivity.Interaction   	Behaviors 5      1   +ImageOverlay2._0.Behaviors.DragDropBehavior  5   
      Data 6%   �� *
DropFile+ �� Mode$ TwoWay=���5      �� 5   
    �� 
TargetType" �6   .�5      �� '  !System.Windows.Shell.WindowChrome �� Property �@ WindowChrome �� Value 5         5!         CaptionHeight$ 999999Q�6#      ResizeBorderThickness$ 1q�5"   #   5$      �� 5%       � �� 5&      �� 5'       �� 
TargetType" �6&   .R�5(      � .+�5)      �� 
������ ._�5*   "   �� #��z��63   5+      5,      5-      5/      50      .��52      �    IsHitTestVisibleInChrome . (  "Xceed.Wpf.Toolkit.MagnifierManager   	Magnifier 53   
   !  Xceed.Wpf.Toolkit.Magnifier  54      
���  ��$��1q�55         Radius$ 75Q�56         
ZoomFactor$ .3526Q�57       � ColumnDefinitions 59   
   �� 5:      ��6   �� *Column0Width+�� 5;      $��5 �6   �� 5<      �� 5=      $��5 �6   �� 5>      ��6   �� *Column4Width+ � RowDefinitions 5@   
   �� 5A      ��6   �� *
Row0Height+�� 5B      $��5 �6   �� 5C      �� 5D      $��5 �6   �� 5E      ��6   �� *
Row4Height+.+�5G   
   � $��2��6   $��2��5H      .+�5I      ��  J� Opacity 6   �� *Value+ �� ElementName$ OpacitySlider�� �� UpdateSourceTrigger$ PropertyChanged=���5L      �� *Image+��5M      �� *StrechBeahvior+5O      �� 5P   
   $��0��6   $��5��5Q      $��1��5R         GridSplitterStyle#��[  5S       . 5T      �� 5U   
   $��0��6   $��5��5V      $��3��5W      #��[  5X       . 5Y      �� 5Z   
   $��1��6   $��0��5[      $��5��5\      #��[  5]       . 5^      �� 5_   
   $��3��6   $��0��5`      $��5��5a      #��[  5b       . 5c      �� 5e   
   $��0��6   $��5��5f      $��1��5g      $��15��5h      $��15��5i      $��	0 0 -15 0q�5j      $��Center=�5k        ArrowRightGeometry#��[ 5m        VectorButton#��[ 5n      ��5l      �� * MoveSpliterColumn0RightCommand+5n      �� 5o   
   $��0��6   $��5��5p      $��1��5q      $��15��5r      $��15��5s      $��	-15 0 0 0q�5t      $��Center=�5u        ArrowLeftGeometry#��[ 5w      #��[ 5x      ��5v      �� *MoveSpliterColumn0LeftCommand+5x      �� 5z   
   $��0��6   $��5��5{      $��3��5|      $��15��5}      $��15��5~      $��	0 0 -15 0q�5      $��Center=�5�      #��[ 5�      #��[ 5�      ��5�      �� * MoveSpliterColumn4RightCommand+5�      �� 5�   
   $��0��6   $��5��5�      $��3��5�      $��15��5�      $��15��5�      $��	-15 0 0 0q�5�      $��Center=�5�      #��[ 5�      #��[ 5�      ��5�      �� *MoveSpliterColumn4LeftCommand+5�      �� 5�   
   $��1��6   $��0��5�      $��5��5�      $��15��5�      $��15��5�      $��	0 -15 0 0q�5�      $��Center=�5�        ArrowUpGeometry#��[ 5�      #��[ 5�      ��5�      �� *MoveSpliterRow0UpCommand+5�      �� 5�   
   $��1��6   $��0��5�      $��5��5�      $��15��5�      $��15��5�      $��	0 0 0 -15q�5�      $��Center=�5�        ArrowDownGeometry#��[ 5�      #��[ 5�      ��5�      �� *MoveSpliterRow0DownCommand+5�      �� 5�   
   $��3��6   $��0��5�      $��5��5�      $��15��5�      $��15��5�      $��	0 -15 0 0q�5�      $��Center=�5�      #��[ 5�      #��[ 5�      ��5�      �� *MoveSpliterRow4UpCommand+5�      �� 5�   
   $��3��6   $��0��5�      $��5��5�      $��15��5�      $��15��5�      $��	0 0 0 -15q�5�      $��Center=�5�      #��[ 5�      #��[ 5�      ��5�      �� *MoveSpliterRow4DownCommand+5�      �� 5�   
   $��0��6   $��0��5�      $��5��5�      $��0 5 0 0q�5�      $	��Top=�5�      .+�5�      ��   ManuBackground#��[ 6    �� Padding$ 10q�5�      y�5�      �� *	IsChecked+$ ExpandCollapseMenuToggle��  BoolToVisCnverter �� 	Converter# [ ._�5�      ]� .+�5�      �� $��
 Open file��5�      $
��10 5q�5�       . ��5�      �� *ImportImageCommand+5�      �� 5�      $��10 0 0 0q�6   $��Center=�5�      $��Allways on top��5�       .   d� 	IsChecked  5�      �� *IsAllwaysOnTop+5�      �� 5�      $��20 0 0 0q�6    $��Center=�5�       $��Strech behavior:   ��5�       �� 5�      $	��100��6   $��Center=�5�       . ��5�      �� *StrechBeahviors+! �� SelectedItem! 5�      �� *StrechBeahvior+5�      �� 5�      $��20 0 0 0q�6   $��Center=�5�      $��Hide controls��5�       .   5�      �� *ShouldHideControls+5�      �� 5�      $��20 0 0 0q�6   $��Center=�5�      $��Activate Magnifier��5�       .   5�      �� *ActivateMagnifier+5�      F� 5�      $��20 0 5 0q�6     ClosedEyeIcon#��[ 5�       	 IconPathStyle#��[	 5�      �� 5�      $��15��6   $��15��5�      $��10 0 5 5q�5�      $	��Top=�5�      $��0q�5�       
 CloseAppGeometry#��[
 5�      $��Right=�5�      #��[ 5�       . ��5�      �� *CloseAppCommand+��5�      �� $ Window��5�      F� 5�      $��5 0 20 0q�6     EyeIcon#��[ 5�      $��Right=�5�      #��[	 5�      �� 5�      -   5        " ��Name$" OpacitySlider��5�      $��Center=�5�      # � Maximum$# 1Q�5�      $ � Minimum$$ 0Q�5�       . % � Value$% 1Q�5�      5�      5�      d� 5�      -   5        & d�Name$& ExpandCollapseMenuToggle��5�      
�������$
  TrueY�5�       . ��5�      �� 5      " d�6&   .R�5     �� #��z��6!   #��z��5  !   #��z��5  !   # z��5  !   ._�5     F� ' F�Name$
' Path��6#     ExpandCollapseGeometry#��[ 5  #     ExpanderToggleStyle#��[ 5  #   5     5	     5     5     5     5     