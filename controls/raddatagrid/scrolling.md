---
title: Programmatic Scrolling
page_title: Programmatic Scrolling
description: Programmatic Scrolling
slug: raddatagrid-scrolling
tags: scrolling
published: True
position: 5
---

# Overview

**RadDataGrid** exposes methods for programatic scrolling to a specific column, a specific row or a specific data item:

* **ScrollColumnIntoView**(DataGridColumn column): Attempts to bring the specified DataGridColumn into View asynchronously.
* **ScrollIndexIntoView**(int index): Attempts to bring the data item at the specified zero-based index into View asynchronously.
* **ScrollItemIntoView**(object item): Attempts to bring the specified data item into View asynchronously.

## Example

This example shows how to use these methods in practice:

First, create a RadDataGrid instance:

	<telerikGrid:RadDataGrid x:Name="DataGrid" Width="200" RowHeight="50" Height="80" />

Then, fill it with data:

	List<Data> dataList = new List<Data>
	{
	    new Data { Country = "Argentina", Population = 41300000, Capital = "Buenos Aires" },
	    new Data { Country = "France", Population = 65350000, Capital = "Paris" },
	    new Data { Country = "Japan", Population = 26700000, Capital = "Tokyo" },
	    new Data { Country = "Spain", Population = 47300000, Capital = "Madrid" },
	    new Data { Country = "Germany", Population = 82000000, Capital = "Berlin" },
	    new Data { Country = "Egypt", Population = 90000000, Capital = "Cairo" },
	    new Data { Country = "Bulgaria", Population = 7500000, Capital = "Sofia" },
	    new Data { Country = "Switzerland", Population = 8000000, Capital = "Bern" },
	    new Data { Country = "Canada", Population = 33500000, Capital = "Ottawa" },
	    new Data { Country = "Russia", Population = 143300000, Capital = "Moscow" },
	    new Data { Country = "Denmark", Population = 5600000, Capital = "Copenhagen" },
	};
	DataGrid.ItemsSource = dataList;

Where *Data* is the business model:

	public class Data
	{
	    public string Country { get; set; }
	
	    public int Population { get; set; }
	
	    public string Capital { get; set; }
	}

Finally, we are ready to do some programmatic scrolling: 

* In the first scenario we want to scroll(bring into View) to the third column of our DataGrid.

		DataGrid.ScrollColumnIntoView(DataGrid.Columns[2]);
* In the second scenario we want to scroll(bring into View) to the twelfth row of our DataGrid.

		DataGrid.ScrollIndexIntoView(11);
* In the last scenario we want to scroll(bring into View) to a specific data item from our data.
	
		DataGrid.ScrollItemIntoView(dataList[6]);