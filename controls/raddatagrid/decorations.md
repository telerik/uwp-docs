---
title: Decorations
page_title: Decorations
description: Decorations
slug: raddatagrid-decorations
tags: decorations
published: True
position: 16
---

# Decorations

**RadDataGrid** control allows custom decorations which can be easily applied by the following properties:

> First, you can choose whether to apply grid lines and which one to be displayed(horizontal,vertical or both) and also choose their color.

* **GridLinesVisibility**: Gets or sets the GridLinesVisibility value that defines which grid lines are currently visible (displayed).
	* *Both* (by default): Both horizontal and vertical grid lines are visible.
	* *Horizontal*: Only the horizontal grid lines are visible.
	* *Vertical*: Only the vertical grid lines are visible.
	* *None*: No grid lines are visible.
* **GridLinesThickness**: Gets or sets the width of the vertical grid lines and the height of the horizontal grid lines.
* **GridLinesBrush**: Gets or sets the Brush value that defines the appearance of grid's horizontal lines.

>You can change the background color of the grid row and/or of alternating rows based on a custom step and starting index:

* **RowBackground**: Gets or sets the Brush that defines the fill of each row.
* **AlternationStep** (type of int) - Gets or sets the step between each two alternate rows. The Modulus (%) operand is applied over this value.
* **AlternationStartIndex** (type of int) - Gets or sets the zero-based index of the row which is considered as alternation start.
* **AlternateRowBackground**: Gets or sets the Brush that defines the fill of the alternate rows, as defined by the AlternationStep property.

Here's an example displaying both the gridlines and decorating alternating rows starting from the first index with a step of 3.

![Data Grid-Decorations](images/DataGrid-Decorations.png)

Here's the XAML definition:

	<telerikGrid:RadDataGrid ItemsSource="{Binding DataGrid}"
	                         Width="500"
	                         VerticalAlignment="Center"
	                         RowBackground="Green"
	                         GridLinesVisibility="Both"
	                         GridLinesBrush="DarkBlue"
	                         GridLinesThickness="2"
	                         AlternationStep="3"
	                         AlternationStartIndex="1"
	                         AlternateRowBackground="SteelBlue">
	    <telerikGrid:RadDataGrid.DataContext>
	        <local:ViewModel/>
	    </telerikGrid:RadDataGrid.DataContext>
	</telerikGrid:RadDataGrid>

Here is the Data that we pass to our DataGrid:

	public class Data
	{
	    public string Name { get; set; }

	    public string Title { get; set; }

	    public string Country { get; set; }

	    public string Address { get; set; }
	}

	public class ViewModel
	{
	    public List<Data> DataGrid { get; set; }

	    public ViewModel()
	    {
	        DataGrid = CreateData();
	    }

	    public List<Data> CreateData()
	    {
	        List<Data> list = new List<Data>();
	        list.Add(new Data { Name = "Pirkko Koskitalo", Title = "Accounting Manager", Country = "Finland", Address = "Torikatu 38" });
	        list.Add(new Data { Name = "Antonio Moreno", Title = "Owner", Country = "Mexico", Address = "Mataderos 2312" });
	        list.Add(new Data { Name = "Ann Devon", Title = "Sales Agent", Country = "UK", Address = "35 King George" });
	        list.Add(new Data { Name = "Hanna Moos", Title = "Sales Representive", Country = "Germany", Address = "Forsterstr. 57" });
	        list.Add(new Data { Name = "Georg Pipps", Title = "Sales Manager", Country = "Austria", Address = "Geislweg 14" });
	        list.Add(new Data { Name = "Paolo Accorti", Title = "Sales Representive", Country = "Italy", Address = "Via Monte Bianco 34" });
	        list.Add(new Data { Name = "Sergio Gutierrez", Title = "Sales Representive", Country = "Argentina", Address = "Al. del Libertador 900" });
	        list.Add(new Data { Name = "Michael Holz", Title = "Sales Manager", Country = "Switzerland", Address = "Grenzacherweg 237" });
	        
			return list;
	    }
	}
