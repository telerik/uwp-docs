---
title: Getting Started
page_title: Getting Started
description: Getting Started
slug: databoundlistbox-getting-started
tags: getting,started
published: True
position: 1
---

# Getting Started

**RadDataBoundListBox** allows you to bind a large amount of data to a list box with experiencing optimized performance. For example, you can bound the control to a collection of 1000 and more items.

To use **RadDataBoundListBox** in your application you have to reference the following assemblies:

* **Telerik.Core.dll**
* **Telerik.Data.dll**
* **Telerik.UI.Xaml.Primitives.dll**
* **Telerik.UI.Xaml.Controls.Data.dll**

After adding reference to the dlls, you can declare a new RadDataBoundListBox as any normal control. To use RadDataBoundListBox in XAML you have to add the following namespace declaration:

	xmlns:telerikDataControls="using:Telerik.UI.Xaml.Controls.Data"

Here is the control declaration:

	<telerikDataControls:RadDataBoundListBox x:Name="radDataBoundListBox" Height="200" Width="180"/>

RadDataBoundListBox accepts IEnumerable as items source.

	ObservableCollection<string> months = new ObservableCollection<string>();
	foreach (string monthName in DateTimeFormatInfo.CurrentInfo.MonthNames)
	{
	    months.Add(monthName);
	}
	
	this.radDataBoundListBox.ItemsSource = months;

Here is a snapshot of the result.

![Getting Started Example](images/DataBoundListBox-GettingStarted.png)