---
title: Polar Area Series
page_title: Polar Area Series
description: Polar Area Series
slug: radchart-series-polarchart-series-polar-polararea
tags: polar,area,series
published: True
position: 3
---

# Polar Area Series



## Overview

When using **PolarAreaSeries** the data points are connected with straight line segments that enclose an area that may be optionally stroked and/or filled as shown on the image below:

![Polar Area Series](images/PolarAreaSeries.png)

## Properties

>**PolarAreaSeries** class inherits from the **PolarLineSeries** class -
[See the inherited properties]({%slug radchart-series-polarchart-series-polar-polarline%}).

* **Fill** (Brush): Gets or sets the **Brush** that defines the interior of the area.

## Example

Here's an example of how to create a **RadCartesianChart** with **PolarAreaSeries**:

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
		
		        <telerikChart:PolarAreaSeries ItemsSource="{Binding}">
		        <telerikChart:PolarAreaSeries.ValueBinding>
		                <telerikChart:PropertyNameDataPointBinding PropertyName="Value"/>
		            </telerikChart:PolarAreaSeries.ValueBinding>
		        <telerikChart:PolarAreaSeries.AngleBinding>
		                <telerikChart:PropertyNameDataPointBinding PropertyName="Angle"/>
		            </telerikChart:PolarAreaSeries.AngleBinding>
		        </telerikChart:PolarAreaSeries>
		</telerikChart:RadPolarChart>