---
title: Telerik Named Brushes
page_title: Telerik Named Brushes
description: Telerik Named Brushes
slug: common-teleriknamedbrushes
tags: telerik,named,brushes
published: True
position: 2
---

# Telerik Named Brushes

In order to globally style the **Telerik Controls** in your application you can use the predefined Telerik named resources. These resources have to be added with a specific key in a ResourceDictionary that will be used when sytling your application. In the examples below the foreground color of the **[RadNumericBox]({%slug radnumericbox-overview%})** will be changed to Green using a **SolidColorBrush** with **TelerikNumericBoxForegroundBrush** key.

>The specific resource keys defined for each control are listed in the `[Control Name]` > `Styling` > `Telerik Named Brushes` documentation sections.       

The new **ThemeResource** markup extension is used when styling the conrols. The theme could be applied on a per element basis.

1. Create a **ResourceDictionary** file in which you define all the resources that you would like to set.

	<SolidColorBrush x:Key="TelerikNumericBoxForegroundBrush" Color="Green"/>

1. In the **ResourceDictionary** in your application resources (**App.xaml**) you have to define an instance of the **UserThemeResources** class defined in the **Telerik.UI.Xaml.Controls** namespace. This class exposes two *static* properties:
	* **DarkResourcesPath** (string): Gets or sets the Uri path to the resoure distionary containing theme resource definitions for the Dark theme. If no value is set, the default Dark theme will be used.
	* **LightResourcesPath** (string): Gets or sets the Uri path to the resoure distionary containing theme resource definitions for the Light theme. If no value is set, the default Light theme will be used.

			<telerik:UserThemeResources x:Key="MyResources" DarkResourcesPath="ms-appx:///Assets/MyResourcesDark.xaml"/>

	This class will override the default Telerik resources defined for the specific theme.
1. Now you can change theme of an element:

		<telerikInput:RadNumericBox x:Name="numericBox"/>

		this.numericBox.RequestedTheme = ElementTheme.Dark;

And this is the result:  
![Telerik Numeric Box Foreground Brush](images/Controls/NumericBox/Styling/TelerikNumericBoxForegroundBrush.png)

# See Also

 * [Resolving Telerik named resources]({%slug common-resolvingteleriknamedresources%})
