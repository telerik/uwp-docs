---
title: Polar Line Series
page_title: Polar Line Series
description: Polar Line Series
slug: radchart-series-polarchart-series-polar-polarline
tags: polar,line,series
published: True
position: 1
---

# Polar Line Series



## Overview

The **PolarLineSeries** are represented on the chart as data points connected with straight line segments as shown on the image below:

![Polar Line Series Example](images/PolarLineSeriesExample.png)

## Properties

>**PolarLineSeries** class inherits from the **PolarPointSeries** class -
[See the inherited properties]({%slug radchart-series-polarchart-series-polar-polarpoint%}).

* **Stroke** (Brush): Gets or sets the **Brush** instance that defines the stroke of the **Line** shape that presents the series.
* **StrokeThickness** (double): Gets or sets the thickness of the line used to present the series.
* **IsClosed** (bool): Gets or sets a value indicating whether the **Line** shape will be closed (the last point to be connected to the first one). The default value is *true*.
* **AutoSortPoints** (bool): Gets or sets a value indicating whether the data points associated with the series will be automatically sorted by their **Angle** property in ascending order. The default value is *true*.

## Example

Here's an example of how to create a **RadCartesianChart** with **PolarLineSeries**:

1. First, create a class for the sample data:

		public class Data
		{
			public double Value { get; set; }
		
			public double Angle { get; set; }
		}

1. Then create the sample data:

		double a = 0.5;
		var b = (Math.PI / 180);
		List<Data> data = new List<Data>();
		for (int i = 1; i < 5 * 360; i += 10)
		{
			data.Add(new Data() { Angle = i, Value = (a * Math.Cos(20 * i * b)) });
		}
		
		this.polarChart.DataContext = data;

1. Finally, create the chart in XAML.

		<telerikChart:RadPolarChart x:Name="polarChart">
		    <telerikChart:RadPolarChart.PolarAxis>
		        <telerikChart:PolarAxis/>
		    </telerikChart:RadPolarChart.PolarAxis>
		    <telerikChart:RadPolarChart.RadialAxis>
		        <telerikChart:NumericalRadialAxis/>
		    </telerikChart:RadPolarChart.RadialAxis>
		
		    <telerikChart:PolarLineSeries ItemsSource="{Binding}">
		        <telerikChart:PolarLineSeries.ValueBinding>
		            <telerikChart:PropertyNameDataPointBinding PropertyName="Value"/>
		        </telerikChart:PolarLineSeries.ValueBinding>
		        <telerikChart:PolarLineSeries.AngleBinding>
		            <telerikChart:PropertyNameDataPointBinding PropertyName="Angle"/>
		        </telerikChart:PolarLineSeries.AngleBinding>
		    </telerikChart:PolarLineSeries>
		</telerikChart:RadPolarChart>