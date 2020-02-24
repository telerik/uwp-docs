---
title: Implement a Legend Control in Unbound Mode
page_title: Implement a Legend Control in Unbound Mode
description: Check our &quot;Implement a Legend Control in Unbound Mode&quot; documentation article for RadChart for UWP control.
slug: radchart-legendcontrol-unboundmode
tags: implement,a,legend,control,in,unbound,mode
published: True
position: 4
---

# Implement a Legend Control in Unbound Mode

The **RadLegendControl** allows a complete customization of the legend items - if you don’t want the content of the
legend to be bound to a chart, then you can specify the items explicitly by adding **LegendItem** items to the **LegendItems** collection.

## Example

The following example demonstrates how to implement a **RadLegendControl** for a **BarSeries** in unbound mode:

![Legend Control-Unbound Mode](images/LegendControl-UnboundMode.png)

1. First, create a class that will represent a single **DataPoint**:

		public class CustomPoint
		{
		    public double Value { get; set; }
		
		    public string Category { get; set; }
		}

1. Then, create a **ViewModel** class to hold a collection of points:

		public class ViewModel
		{
		    public ViewModel()
		    {
		        this.SeriesData = new List<CustomPoint>()
		        {
		            new CustomPoint { Category = "Dogs", Value = 10 },
		            new CustomPoint { Category = "Cats", Value = 14 },
		            new CustomPoint { Category = "Birds", Value = 5 },
		        };
		    }
		
		    public List<CustomPoint> SeriesData { get; set; }
		}

1. Create the **RadCartesianChart** in XAML: 

		<telerikChart:RadCartesianChart PaletteName="DefaultDark" Width="200" Height="200">
		    <telerikChart:RadCartesianChart.DataContext>
		        <local:ViewModel/>
		    </telerikChart:RadCartesianChart.DataContext>
		    <telerikChart:BarSeries ItemsSource="{Binding SeriesData}" PaletteMode="DataPoint">
		        <telerikChart:BarSeries.HorizontalAxis>
		            <telerikChart:CategoricalAxis/>
		        </telerikChart:BarSeries.HorizontalAxis>
		        <telerikChart:BarSeries.VerticalAxis>
		            <telerikChart:LinearAxis/>
		        </telerikChart:BarSeries.VerticalAxis>
		        <telerikChart:BarSeries.CategoryBinding>
		            <telerikChart:PropertyNameDataPointBinding PropertyName="Category"/>
		        </telerikChart:BarSeries.CategoryBinding>
		        <telerikChart:BarSeries.ValueBinding>
		            <telerikChart:PropertyNameDataPointBinding PropertyName="Value"/>
		        </telerikChart:BarSeries.ValueBinding>
		    </telerikChart:BarSeries>
		</telerikChart:RadCartesianChart>

1. Finally, create the **RadLegendControl** using XAML specifying each legend item independently of the chart.

		<telerikPrimitives:RadLegendControl>
		    <telerikPrimitives:RadLegendControl.LegendItems>
		        <telerikPrimitives:LegendItem Fill="#1E98E4" Stroke="#1E98E4" Title="Dogs"/>
		        <telerikPrimitives:LegendItem Fill="#FFC500" Stroke="#FFC500" Title="Cats"/>
		        <telerikPrimitives:LegendItem Fill="#FF2A00" Stroke="#FF2A00" Title="Birds"/>
		    </telerikPrimitives:RadLegendControl.LegendItems>
		</telerikPrimitives:RadLegendControl>
