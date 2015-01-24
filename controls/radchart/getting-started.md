---
title: Getting Started
page_title: Getting Started
description: Getting Started
slug: radchart-introduction
tags: getting,started
published: True
position: 1
---

# Getting Started

This help article demonstrates how to create a chart from scratch using the chart-related classes in the Telerik UI for Windows Universal. First, you have to add a reference to the following assemblies:

* **Telerik.Core.dll**
* **Telerik.UI.Xaml.Primitives.dll**
* **Telerik.UI.Xaml.Chart.dll**

Alternatively, you can add reference to **Telerik UI for Windows Universal SDK**.

The following example demonstrates how to add RadCartesianChart to your application. Here is the XAML declaration: 

	<telerikChart:RadCartesianChart/>

Where:

	xmlns:telerikChart="using:Telerik.UI.Xaml.Controls.Chart"

Now there are two ways to proceed with the setup of the chart:

* Setting all properties and behaviors of your chart from scratch.


* With Galleries - you can choose the basic look of your chart from the gallery database and the XAML code will be automatially generated for you. Then you can edit it to customize the chart.

Both approaches will be described in the sections below.

## Defining RadChart Example

The chart needs a horizontal axis and a vertical axis. Specifying the proper axes depends on your data and how you want it visualized. For example, if you want to visualize categorical data using a categorical series like bars or area, the horizontal axis should be a categorical axis while the vertical axis should be logarithmic or linear. Here is how you define the axes: 

	<telerikChart:RadCartesianChart>
	    <telerikChart:RadCartesianChart.HorizontalAxis>
	        <telerikChart:CategoricalAxis/>
	    </telerikChart:RadCartesianChart.HorizontalAxis>
	    <telerikChart:RadCartesianChart.VerticalAxis>
	        <telerikChart:LinearAxis/>
	    </telerikChart:RadCartesianChart.VerticalAxis>
	</telerikChart:RadCartesianChart>

Now you have a chart with two axes but no data. In order to visualize data you will need to add the desired chart series. The presentation of the data itself is achieved by declaring a chart series inside our chart and feeding these series with data. Each chart series visualizes its data point collection in a different way. RadChart supports large number of series out of the box, the simplest of which is the line series. Here is how you define the line series:

	<telerikChart:RadCartesianChart x:Name="chart">
	    <telerikChart:RadCartesianChart.HorizontalAxis>
	        <telerikChart:CategoricalAxis/>
	    </telerikChart:RadCartesianChart.HorizontalAxis>
	    <telerikChart:RadCartesianChart.VerticalAxis>
	        <telerikChart:LinearAxis/>
	    </telerikChart:RadCartesianChart.VerticalAxis>
	    <telerikChart:LineSeries ItemsSource="{Binding}"/>
	</telerikChart:RadCartesianChart>

In addition, you use the ItemsSource property of the series to bind the data to the DataContext of this series. Now that the series is specified, you'll see some randomly generated data. This data is generated only when the control is loaded at design time so that the user can have a visual clue how the series looks. When it comes to real data, RadChart supports data binding out of the box and it works simply by assigning a value to the ItemsSource property of the series. The data source can be any valid IEnumerable instance and if it is an observable collection, the chart will update in real-time as the data in the collection changes. Here is how you can bind the chart to a simple data source: 

	this.radChart.DataContext = new double[] { 20, 30, 50, 10, 60, 40, 20, 80 };

You now have simple line chart setup. To summarize, you used a Cartesian Chart object with the proper axes - depending on the data you plan to display. Then you added the desired series object to visualize the data and, finally, filled the series with data.

## Working with Galleries

The Galleries provide very convenient way to generate charts in just a few seconds. They contain sample XAML definitions for all basic scenarios for all chart types. You just have to choose a chart from the samples and its XAML definition will be auto-generated in your code. When you have the base of the chart, you can easily change it's properties to fit in your model.

Here is a demo explaining how to work with Galleries. 

After you have defined a chart in XAML, you can go to the Designer and select it - a button will appear in the top right corner. If you click on the button a menu with all chart types will appear: 

![Gallery 1](images/getting-started/Gallery1.png)

Each chart type contains several variations covering the most common scenarios. Now you can expand each chart type to see all available setups for this type.

>When you select the desired chart, you will be asked if you wish to replace ALL existing XAML code in your current chart with the one defined in the gallery sample.

![Gallery 2](images/getting-started/Gallery2.png)

Let's select the second sample from the Area Charts. If you click on the continue button this code will be auto-generated in XAML: 

	<telerikChart:RadCartesianChart PaletteName="DefaultDark">
	    <telerikChart:RadCartesianChart.Grid>
	        <telerikChart:CartesianChartGrid MajorLinesVisibility="Y"/>
	    </telerikChart:RadCartesianChart.Grid>
	    <telerikChart:RadCartesianChart.VerticalAxis>
	        <telerikChart:LinearAxis/>
	    </telerikChart:RadCartesianChart.VerticalAxis>
	    <telerikChart:RadCartesianChart.HorizontalAxis>
	        <telerikChart:CategoricalAxis/>
	    </telerikChart:RadCartesianChart.HorizontalAxis>
	    <telerikChart:AreaSeries CombineMode="Stack">
	        <telerikCharting:CategoricalDataPoint Value="1.0"/>
	        <telerikCharting:CategoricalDataPoint Value="1.9"/>
	        <telerikCharting:CategoricalDataPoint Value="1.9"/>
	        <telerikCharting:CategoricalDataPoint Value="2.3"/>
	        <telerikCharting:CategoricalDataPoint Value="2.1"/>
	    </telerikChart:AreaSeries>
	    <telerikChart:AreaSeries CombineMode="Stack">
	        <telerikCharting:CategoricalDataPoint Value="1.0"/>
	        <telerikCharting:CategoricalDataPoint Value="1.0"/>
	        <telerikCharting:CategoricalDataPoint Value="1.0"/>
	        <telerikCharting:CategoricalDataPoint Value="1.0"/>
	        <telerikCharting:CategoricalDataPoint Value="1.0"/>
	    </telerikChart:AreaSeries>
	</telerikChart:RadCartesianChart>

Where:

	xmlns:telerikCharting="using:Telerik.Universal.Charting"

And this is the result of the auto-generated code:

![Gallery 3](images/getting-started/Gallery3.png)

Now you are free to edit!