---
title: Spline Area Series
page_title: Spline Area Series
description: Check our &quot;Spline Area Series&quot; documentation article for RadChart for UWP control.
slug: radchart-cartesianchart-series-categorical-splineareaseries
tags: spline,area,series
published: True
position: 2
---

# Spline Area Series

## Overview

When using **SplineAreaSeries** the data points are connected with smooth line segments and the area enclosed by the line and the coordinate axis may be optionally stroked and/or filled as shown on the image below.

![Categorical Spline Area Series](images/CategoricalSplineAreaSeries.png)

>**SplineAreaSeries** class inherits from the **AreaSeries** class -
[ See the inherited properties]({%slug radchart-cartesianchart-series-categorical-areaseries%}).

## Example

Here's an example of how to create a **RadCartesianChart** with **SplineAreaSeries**.

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
		
		this.splineAreaSeries.DataContext = data;

1. Finally, create the chart using XAML.

		<telerikChart:RadCartesianChart x:Name="splineAreaSeries" PaletteName="DefaultLight">
		    <telerikChart:RadCartesianChart.VerticalAxis>
		        <telerikChart:LinearAxis/>
		    </telerikChart:RadCartesianChart.VerticalAxis>
		    <telerikChart:RadCartesianChart.HorizontalAxis>
		        <telerikChart:CategoricalAxis/>
		    </telerikChart:RadCartesianChart.HorizontalAxis>
		
		    <telerikChart:SplineAreaSeries ItemsSource="{Binding}">
		        <telerikChart:SplineAreaSeries.CategoryBinding>
		            <telerikChart:PropertyNameDataPointBinding PropertyName="Category"/>
		        </telerikChart:SplineAreaSeries.CategoryBinding>
		        <telerikChart:SplineAreaSeries.ValueBinding>
		            <telerikChart:PropertyNameDataPointBinding PropertyName="Value"/>
		        </telerikChart:SplineAreaSeries.ValueBinding>
		    </telerikChart:SplineAreaSeries>
		</telerikChart:RadCartesianChart>
