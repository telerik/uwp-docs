---
title: Polar Spline Area Series
page_title: Polar Spline Area Series
description: Check our &quot;Polar Spline Area Series&quot; documentation article for RadChart for UWP control.
slug: radchart-series-polarchart-series-polar-polarsplinearea
tags: polar,spline,area,series
published: True
position: 4
---

# Polar Spline Area Series



## Overview

When using **PolarSplineAreaSeries** the data points are connected with smooth line segments that enclose an area that may be optionally stroked and/or filled as shown on the image below:

![Polar Spline Area Series](images/PolarSplineAreaSeries.png)

## Properties

>PolarSplineAreaSeries class inherits from the PolarAreaSeries class -
[See the inherited properties]({%slug radchart-series-polarchart-series-polar-polararea%}).


## Example

Here's an example of how to create a **RadCartesianChart** with **PolarSplineAreaSeries**:

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
		
		    <telerikChart:PolarSplineAreaSeries ItemsSource="{Binding}">
		        <telerikChart:PolarSplineAreaSeries.ValueBinding>
		            <telerikChart:PropertyNameDataPointBinding PropertyName="Value"/>
		        </telerikChart:PolarSplineAreaSeries.ValueBinding>
		        <telerikChart:PolarSplineAreaSeries.AngleBinding>
		            <telerikChart:PropertyNameDataPointBinding PropertyName="Angle"/>
		        </telerikChart:PolarSplineAreaSeries.AngleBinding>
		    </telerikChart:PolarSplineAreaSeries>
		</telerikChart:RadPolarChart>
