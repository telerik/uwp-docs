---
title: Spline Series
page_title: Spline Series
description: Check our &quot;Spline Series&quot; documentation article for RadChart for UWP control.
slug: radchart-cartesianchart-series-categorical-splineseries
tags: spline,series
published: True
position: 2
---

# Spline Series



## Overview

The **SplineSeries** are represented on the chart as data points connected with smooth line segments as shown on the image below.

![Categorical Spline Series](images/CategoricalSplineSeries.png)

>**SplineSeries** class inherits from the **LineSeries** class - [See the inherited properties]({%slug radchart-cartesianchart-series-categorical-lineseries%}).


## Example

Here's an example of how to create a **RadCartesianChart** with **SplineSeries**.

1. First, create a class for the sample data.
	
		public class Data
		{
			public string Category { get; set; }
		
			public double Value { get; set; }
		}

1. Then create the sample data.

		List<Data> data = new List<Data>();
		data.Add(new Data() { Category = "Apples", Value = 5 });
		data.Add(new Data() { Category = "Oranges", Value = 9 });
		data.Add(new Data() { Category = "Pineaples", Value = 8 });
	
	this.splineSeries.DataContext = data;

1. Finally, create the chart using XAML.

		<telerikChart:RadCartesianChart x:Name="splineSeries" PaletteName="DefaultLight">
		    <telerikChart:RadCartesianChart.VerticalAxis>
		        <telerikChart:LinearAxis/>
		    </telerikChart:RadCartesianChart.VerticalAxis>
		    <telerikChart:RadCartesianChart.HorizontalAxis>
		        <telerikChart:CategoricalAxis/>
		    </telerikChart:RadCartesianChart.HorizontalAxis>
		
		    <telerikChart:SplineSeries ItemsSource="{Binding}">
		        <telerikChart:SplineSeries.CategoryBinding>
		            <telerikChart:PropertyNameDataPointBinding PropertyName="Category"/>
		        </telerikChart:SplineSeries.CategoryBinding>
		        <telerikChart:SplineSeries.ValueBinding>
		            <telerikChart:PropertyNameDataPointBinding PropertyName="Value"/>
		        </telerikChart:SplineSeries.ValueBinding>
		    </telerikChart:SplineSeries>
		</telerikChart:RadCartesianChart>
