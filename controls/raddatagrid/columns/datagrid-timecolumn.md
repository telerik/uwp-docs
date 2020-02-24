---
title: Time Column
page_title: Time Column
description: Check our &quot;Time Column&quot; documentation article for RadDataGrid for UWP control.
slug: datagrid-columns-timecolumn
tags: time,column
published: True
position: 7
---

# Time Column

The **TimeGridDateColumns** is used to represent DateTime objects.
It uses the [RadTimePicker]({%slug raddatetimepickers-overview%}) control to pick a value in **EditMode**.

## Example

The following example shows how to generate DataGridTimeColumns manually:

	<telerikGrid:RadDataGrid UserEditMode="Inline" ItemsSource="{Binding}" AutoGenerateColumns="False" Height="250" Width="400">
	    <telerikGrid:RadDataGrid.Columns>
	        <telerikGrid:DataGridTextColumn PropertyName="Lecture" Header="Lecture"/>
	        <telerikGrid:DataGridTimeColumn PropertyName="Time" Header="Start"/>
	    </telerikGrid:RadDataGrid.Columns>
	</telerikGrid:RadDataGrid>

![Time Column](images/TimeColumn.png)

We have also used the PropertyName property to associate each column with the relevant property from our model.

Here's the data:


	this.DataContext = new List<Data>()
	{
		new Data { Lecture = "Biology", Time = new DateTime(2012, 11, 11, 12, 0, 0)},
		new Data { Lecture = "Physics", Time = new DateTime(2012, 11, 11, 13, 0, 0)},
		new Data { Lecture = "Literature", Time = new DateTime(2012, 11, 11, 14, 0, 0)},
		new Data { Lecture = "Math", Time = new DateTime(2012, 11, 11, 15, 0, 0)}
	};

*Data* is our custom class:

	public class Data
	{
		public string Lecture { get; set; }
		public DateTime Time { get; set; }
	}
	
In addition, you could use **CellContentFormat** to format the time using any of the [.NET Standard Date and Time Format Strings](https://docs.microsoft.com/en-us/dotnet/standard/base-types/standard-date-and-time-format-strings).

Here is a quick example:

	<grid:DataGridTimeColumn PropertyName="Time" Header="Start" CellContentFormat="{}{0:T}" />