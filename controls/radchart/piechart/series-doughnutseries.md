---
title: Doughnut Series
page_title: Doughnut Series
description: Doughnut Series
slug: radchart-series-doughnutseries
tags: doughnut,series
published: True
position: 2
---

# Doughnut Series

The **DoughnutSeries** visualizes its data points in doughnut segments.

![Doughnut Series First Look](images/DoughnutSeriesFirstLook.png)

## Properties

>**DoughnutSeries** class inherits from the **PieSeries** class - 
[See the inherited properties]({%slug radchart-series-pieseries%}).

* **InnerRadiusFactor** (double): Gets or sets the inner radius factor of the series (that is the space that remains empty). The value is in logical units, in the range of [0, 1].

## Example

The following code demonstrates how to setup a **DoughnutSeries** using **RadPieChart**:

Add an xmlns definition to Telerik controls:

	xmlns:telerik="using:Telerik.UI.Xaml.Controls.Chart"

Declare the RadPieChart and the DoughnutSeries:

	<telerik:RadPieChartx:Name="mychart" Width="300" Height="300" ClipToBounds="False" PaletteName="DefaultDark">
		<telerik:DoughnutSeries ShowLabels="True">
			<telerik:DoughnutSeries.ValueBinding>
				<telerik:PropertyNameDataPointBinding PropertyName="Value"/>
			</telerik:DoughnutSeries.ValueBinding>
		</telerik:DoughnutSeries>
	</telerik:RadPieChart>

Create sample data.
	
	public class Data
	{
		public double Value { get; set; }
	}
	
	public List<Data> CreateData()
	{
		List<Data> data = new List<Data>();
		data.Add(new Data() { Value = 20 });
		data.Add(new Data() { Value = 45 });
		data.Add(new Data() { Value = 35 });

		return data;
	}

Pass the data to the **ItemsSource** of the series.

	this.mychart.Series[0].ItemsSource = CreateData();
