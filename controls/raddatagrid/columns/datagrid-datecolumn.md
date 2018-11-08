---
title: Date Column
page_title: Date Column
description: Date Column
slug: datagrid-columns-datecolumn
tags: date,column
published: True
position: 3
---

# Date Column

The **DataGridDateColumns** is used to represent DateTime objects.
It uses the [RadDatePicker]({%slug raddatetimepickers-overview%}) control to pick a value in **EditMode**.

## Example

The following example shows how to generate DataGridDateColumns manually:

	<telerikGrid:RadDataGrid UserEditMode="Inline" ItemsSource="{Binding}" AutoGenerateColumns="False">
	    <telerikGrid:RadDataGrid.Columns>
	        <telerikGrid:DataGridTextColumn PropertyName="Event" Header="Event"/>
	        <telerikGrid:DataGridDateColumn PropertyName="Date" Header="Date"/>
	    </telerikGrid:RadDataGrid.Columns>
	</telerikGrid:RadDataGrid>

![Date Column](images/DateColumn.png)

We have also used the **PropertyName** property to associate each column with the relevant property from our model.

Here's the data:

	this.DataContext = new List<Data>()
	{
	    new Data { Event = "Meeting",  Date = new DateTime(2013, 3, 12, 14, 00, 0)},
	    new Data { Event = "Lecture",   Date = new DateTime(2013, 3, 12, 14, 30, 0)},
	    new Data { Event = "Meeting", Date = new DateTime(2013, 3, 12, 15, 15, 0)},
	    new Data { Event = "Conference",   Date = new DateTime(2013, 3, 12, 16, 00, 0)}
	};

*Data* is our custom class:

	public class Data
	{
	    public string Event { get; set; }
	    public DateTime Date { get; set; }
	}

In addition, you could use **CellContentFormat** to format the time using any of the [.NET Standard Date and Time Format Strings](https://docs.microsoft.com/en-us/dotnet/standard/base-types/standard-date-and-time-format-strings).

Here is a quick example:

	<grid:DataGridDateColumn PropertyName="Date" Header="Date" CellContentFormat="{}{0:M}" />