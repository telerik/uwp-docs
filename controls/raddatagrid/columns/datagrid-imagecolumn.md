---
title: Image Column
page_title: Image Column
description: Check our &quot;Image Column&quot; documentation article for RadDataGrid for UWP control.
slug: datagrid-columns-imagecolumn
tags: image,column
published: True
position: 4
---

# Image Column

The **DataGridImageColumn** is used to to show images in the column cells.

## Example

The following example shows how to generate DataGridImageColumn manually:

	<telerikGrid:RadDataGrid AutoGenerateColumns="False" x:Name="grid" ItemsSource="{Binding}">
	    <telerikGrid:RadDataGrid.Columns>
	        <telerikGrid:DataGridImageColumn PropertyName="Flag" Header="Flag"/>
	        <telerikGrid:DataGridTextColumn PropertyName="Country" Header="Country"/>
	    </telerikGrid:RadDataGrid.Columns>
	</telerikGrid:RadDataGrid>

![Image Column](images/ImageColumn.png)

We have also used the PropertyName property to associate each column with the relevant property from our model.

Here's the data:

	this.DataContext = new List<Data>()
	{
	    new Data { Country = "Argentina", Flag = new BitmapImage(new Uri("ms-appx:///Argentina.png", UriKind.Absolute)) },
	    new Data { Country = "Brazil", Flag = new BitmapImage(new Uri("ms-appx:///Brazil.png")) },
	    new Data { Country = "China", Flag = new BitmapImage(new Uri("ms-appx:///China.png")) },
	    new Data { Country = "Canada", Flag = new BitmapImage(new Uri("ms-appx:///Canada.png")) }
	};

*Data* is our custom class:

	public class Data
	{
	    public string Country { get; set; }
	    public BitmapImage Flag { get; set; }
	}