---
title: Getting Started
page_title: Getting Started
description: Check our &quot;Getting Started&quot; documentation article for RadDataGrid for UWP control.
slug: raddatagrid-datastorageprovider-gettingstarted
tags: getting,started
published: True
position: 1
---

# Getting Started

This quick start tutorial will help you setup and add a **RadDataGrid DataStorage Provider** control to an application.

First, add a reference to the following assembly:

* Telerik.UI.Xaml.Controls.DataProvider.dll

> Similar to the RadMap SDK Grid.DataStorageProvider will be platform specific (cannot be built in AnyCPU) as it consumes native code.

Alternatively, you can add a reference to **RadDataGrid DataStorage Provider for Windows 8.1 XAML** SDK.

	<telerik:RadDataGrid x:Name="grid" UserEditMode="Inline" AutoGenerateColumns="False">
		<telerik:RadDataGrid.Columns>
			<telerik:DataGridTextColumn PropertyName="Name"/>
		</telerik:RadDataGrid.Columns>
	</telerik:RadDataGrid>

	
	Context context = new Context("Example", DatabaseLocation.Local);
	context.Insert(new Data { Name = "Data" });
	context.SaveChanges();
	grid.ItemsSource = new DataStorageItemsSource<Data>(context);

	public class Data
	{
		[Key]
		[DatabaseGenerated(DatabaseGeneratedOption.Identity)]
		public int ID { get; set; }

		public string Name { get; set; }
	} 

To illustrate the scenario follow the steps: 

1. Start the application
1. The RadDataGrid should have one item named "Data".
1. Edit the item and type, for example, "123".  
	![data Provider 1](images/dataProvider1.png)
1. Close the application.
1. Start the application again - the previous item is saved.  
	![data Provider 2](images/dataProvider2.png)
