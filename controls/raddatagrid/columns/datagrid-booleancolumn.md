---
title: Boolean Column
page_title: Boolean Column
description: Check our &quot;Boolean Column&quot; documentation article for RadDataGrid for UWP control.
slug: datagrid-columns-booleancolumn
tags: boolean,column
published: True
position: 2
---

# Boolean Column



The **DataGridBooleanColumn** is used to represent boolean values.
It uses **CheckBox** control to edit its values in **EditMode**.


## Example

The following example shows how to generate DataGridBooleanColumns manually:

	<telerikGrid:RadDataGrid ItemsSource="{Binding}" AutoGenerateColumns="False">
	    <telerikGrid:RadDataGrid.Columns>
	        <telerikGrid:DataGridTextColumn PropertyName="Product" Header="Product"/>
	        <telerikGrid:DataGridBooleanColumn PropertyName="Stock" Header="Stock"/>
	    </telerikGrid:RadDataGrid.Columns>
	</telerikGrid:RadDataGrid>

![Boolean Column](images/BooleanColumn.png)

We have also used the **PropertyName** property to associate each column with the relevant property from our model.

Here is the data:

	this.DataContext = new List<Data>()
	{
	    new Data { Product = "Milk", Stock = true },
	    new Data { Product = "Cheese", Stock = false },
	    new Data { Product = "Bread", Stock = false },
	    new Data { Product = "Chocolate", Stock = true } 
	};

*Data* is our custom class:

	public class Data
	{
	    public string Product { get; set; }
	    public bool Stock { get; set; }
	}