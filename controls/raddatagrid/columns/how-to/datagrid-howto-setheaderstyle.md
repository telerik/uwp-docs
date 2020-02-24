---
title: Set Column Header Style
page_title: Set Column Header Style
description: Check our &quot;Set Column Header Style&quot; documentation article for RadDataGrid for UWP control.
slug: datagrid-columns-howto-setheaderstyle
tags: set,column,header,style
published: True
position: 1
---

# Set Column Header Style

This article describes how to set a column header and its style.

The following example sets column headers and changes the background color of the first column and the fontstyle and fontsize of the second column using the HeaderStyle property.

>The target type of the style should be `TargetType="gridPrimitives:DataGridColumnHeader"`  
> Where `xmlns:gridPrimitives="using:Telerik.UI.Xaml.Controls.Grid.Primitives"`
 
![Data Grid-Columns-Header Style](images/DataGrid-Columns-HeaderStyle.png)

	<telerikGrid:RadDataGrid x:Name="grid" AutoGenerateColumns="False" Width="300" VerticalAlignment="Center">
	    <telerikGrid:RadDataGrid.Columns>
	        <telerikGrid:DataGridTextColumn PropertyName="Country" Header="Country">
	            <telerikGrid:DataGridTextColumn.HeaderStyle>
	                <Style TargetType="gridPrimitives:DataGridColumnHeader">
	                    <Setter Property="Background" Value="#58622D"/>
	                </Style>
	            </telerikGrid:DataGridTextColumn.HeaderStyle>
	        </telerikGrid:DataGridTextColumn>
	
	        <telerikGrid:DataGridTextColumn PropertyName="Capital" Header="Capital">
	            <telerikGrid:DataGridTextColumn.HeaderStyle>
	                <Style TargetType="gridPrimitives:DataGridColumnHeader">
	                    <Setter Property="FontStyle" Value="Italic"/>
	                    <Setter Property="FontSize" Value="14"/>
	                </Style>
	            </telerikGrid:DataGridTextColumn.HeaderStyle>
	        </telerikGrid:DataGridTextColumn>
	    </telerikGrid:RadDataGrid.Columns>
	</telerikGrid:RadDataGrid>


	this.grid.ItemsSource = new List<Data>
	{
	    new Data { Country = "Columbia", Capital = "Bogota" },
	    new Data { Country = "Germany", Capital = "Berlin" },
	    new Data { Country = "Italy", Capital = "Rome" },
	    new Data { Country = "France", Capital = "Paris" },
	    new Data { Country = "Bulgaria", Capital = "Sofia" },
	};

*Data* is the custom class which represents our objects:

	public class Data
	{
	    public string Country { get; set; }
	
	    public string Capital { get; set; }
	}