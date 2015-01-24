---
title: Text Column
page_title: Text Column
description: Text Column
slug: datagrid-columns-textcolumn
tags: text,column
published: True
position: 6
---

# Text Column

A DataGridTextColumn converts the content of each associated cell to a **System.String** object.

>A **DataGridTextColumn** has better performance than a **DataGridTemplateColumn**.

## Properties

Here are the specific properties for TextColumns:

* **PropertyName** - Gets or sets the name of the property of the object type that represents each row within the grid.
* **CellContentStyle** - Gets or sets the Style object that defines the appearance of each cell associated with this column. The TargetType of the Style should be TextBlock type.
* [CellContentStyleSelector]({%slug datagrid-columns-howto-usecellcontentstyleselectorproperty%}) - Gets or sets the StyleSelector instance that allows for dynamic appearance on a per cell basis.
* **CellContentFormat** - Gets or sets the custom format for each cell value. The String.Format routine is used and the format passed should be in the form required by this method.

## Example

The following example shows how to generate DataGridTextColumns manually:

	<telerikGrid:RadDataGrid UserEditMode="Inline" x:Name="grid" AutoGenerateColumns="False" VerticalAlignment="Center" Width="300">
	    <telerikGrid:RadDataGrid.Columns>
	        <telerikGrid:DataGridTextColumn PropertyName="Country" Header="Country">
	            <telerikGrid:DataGridTextColumn.CellContentStyle>
	                <Style TargetType="TextBlock">
	                    <Setter Property="Foreground" Value="Red"/>
	                    <Setter Property="FontStyle" Value="Italic"/>
	                    <Setter Property="HorizontalAlignment" Value="Center"/>
	                    <Setter Property="VerticalAlignment" Value="Center"/>
	                </Style>
	            </telerikGrid:DataGridTextColumn.CellContentStyle>
	        </telerikGrid:DataGridTextColumn>
	        <telerikGrid:DataGridTextColumn PropertyName="Capital" Header="Capital" CellContentFormat="{}{0} city"/>
	    </telerikGrid:RadDataGrid.Columns>
	</telerikGrid:RadDataGrid>

In this example we have two columns. As you can see we have used the **CellContentStyle** property
to apply a style to the first column and the **CellContentFormat** property to format the content
of the second column.

![Text Column Style And Format](images/TextColumn.png)

We have also used the **PropertyName** property to associate each column with the relevant property from our model.


Here's how we set the ItemsSource of the grid:

	this.grid.ItemsSource = new List<Data>
	 { 
		 new Data { Country = "Columbia", Capital = "Bogota"},
		 new Data { Country = "Germany", Capital = "Berlin"},
		 new Data { Country = "Italy", Capital = "Rome"},
		 new Data { Country = "France", Capital = "Paris" },
		 new Data { Country = "Bulgaria", Capital = "Sofia" }, 
	};

Where *Data* is our custom class:

	public class Data
	{
	    public string Country { get; set; }
	    public string Capital { get; set; }
	}