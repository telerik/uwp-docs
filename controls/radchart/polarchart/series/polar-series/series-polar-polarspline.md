---
title: Polar Spline Series
page_title: Polar Spline Series
description: Check our &quot;Polar Spline Series&quot; documentation article for RadChart for UWP control.
slug: radchart-series-polarchart-series-polar-polarspline
tags: polar,spline,series
published: True
position: 2
---

# Polar Spline Series



## Overview

The **PolarSplineSeries** are represented on the chart as data points connected with smooth line segments as shown on the image below:

![Polar Spline Series](images/PolarSplineSeries.png)

## Properties

>PolarSplineSeries class inherits from the PolarLineSeries class -
[See the inherited properties]({%slug radchart-series-polarchart-series-polar-polarline%}).


## Example

Here's an example of how to create a **RadCartesianChart** with **PolarSplineSeries**:

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
		
		    <telerikChart:PolarSplineSeries ItemsSource="{Binding}">
		        <telerikChart:PolarSplineSeries.ValueBinding>
		            <telerikChart:PropertyNameDataPointBinding PropertyName="Value"/>
		        </telerikChart:PolarSplineSeries.ValueBinding>
		        <telerikChart:PolarSplineSeries.AngleBinding>
		            <telerikChart:PropertyNameDataPointBinding PropertyName="Angle"/>
		        </telerikChart:PolarSplineSeries.AngleBinding>
		    </telerikChart:PolarSplineSeries>
		</telerikChart:RadPolarChart>
