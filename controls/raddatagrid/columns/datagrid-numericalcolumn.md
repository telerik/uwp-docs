---
title: Numerical Column
page_title: Numerical Column
description: Check our &quot;Numerical Column&quot; documentation article for RadDataGrid for UWP control.
slug: datagrid-columns-numericalcolumn
tags: numerical,column
published: True
position: 5
---

# Numerical Column

The **DataGridNumericalColumns** is used to represent only numerical values. It uses the [RadNumericBox]({%slug radnumericbox-overview%}) control to pick a value in **EditMode**.

## Example

The following example shows how to generate DataGridNumericalColumns manually:

	<telerikGrid:RadDataGrid UserEditMode="Inline" ItemsSource="{Binding}" AutoGenerateColumns="False" Height="250" Width="300">
	    <telerikGrid:RadDataGrid.Columns>
	        <telerikGrid:DataGridTextColumn PropertyName="Product" Header="Product"/>
	        <telerikGrid:DataGridNumericalColumn PropertyName="Amount" Header="Amount"/>
	    </telerikGrid:RadDataGrid.Columns>
	</telerikGrid:RadDataGrid>

![Numerical Column](images/NumericalColumn.png)

We have also used the PropertyName property to associate each column with the relevant property from our model.


Here's the data:

	this.DataContext = new List<Data>()
	{
	    new Data { Product = "Jacket",  Amount = 5},
	    new Data { Product = "Jeans",   Amount = 3},
	    new Data { Product = "T-Shirt", Amount = 5},
	    new Data { Product = "Socks",   Amount = 10}
	};

*Data* is our custom class:

	public class Data
	{
	    public string Product { get; set; }
	    public int Amount { get; set; }
	}