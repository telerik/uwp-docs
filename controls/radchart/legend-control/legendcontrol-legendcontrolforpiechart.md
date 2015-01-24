---
title: Implement a Legend Control for a PieSeries
page_title: Implement a Legend Control for a PieSeries
description: Implement a Legend Control for a PieSeries
slug: radchart-legendcontrol-legendcontrolforpiechart
tags: implement,a,legend,control,for,a,pieseries
published: True
position: 2
---

# Implement a Legend Control for a PieSeries

The **RadLegendControl** could be bound to the items of a single chart series. Here in an example of how to implement a **RadLegendControl** for a **PieChart** with **PieSeries**:

## Example

![Pie Chart Legend Control 2](images/PieChartLegendControl2.png)

1. First, create a class for sample data.

		public class Data
		{
		    public int Amount { get; set; }
		
		    public string Category { get; set; }
		}

1. Then, create a sample data.

		string[] category = new string[5] { "Paper", "Wood", "Cloth", "Glass", "Metal" };
		this.chart.DataContext = Enumerable.Range(1, 5).Select(x => new Data { Amount = 10 * x, Category = category[x - 1] }).ToList();

1. Create the **PieChart** in XAML.

		<telerikChart:RadPieChart x:Name="chart" PaletteName="DefaultDark" Width="250" Height="250">
		    <telerikChart:PieSeries ItemsSource="{Binding}" RadiusFactor="0.8">
		        <telerikChart:PieSeries.ValueBinding>
		            <telerikChart:PropertyNameDataPointBinding PropertyName="Amount"/>
		        </telerikChart:PieSeries.ValueBinding>
		        <telerikChart:PieSeries.LegendTitleBinding >
		            <telerikChart:PropertyNameDataPointBinding PropertyName="Category"/>
		        </telerikChart:PieSeries.LegendTitleBinding>
		    </telerikChart:PieSeries>
		</telerikChart:RadPieChart>

1. Finally, create the **RadLegendControl** and bind its **LegendProvider** property to the chart.

		<telerikPrimitives:RadLegendControl LegendProvider="{Binding ElementName=chart}">
		    <telerikPrimitives:RadLegendControl.ItemsPanel>
		        <ItemsPanelTemplate>
		            <StackPanel Orientation="Vertical"/>
		        </ItemsPanelTemplate>
		    </telerikPrimitives:RadLegendControl.ItemsPanel>
		    <telerikPrimitives:RadLegendControl.ItemTemplate>
		        <DataTemplate>
		            <StackPanel Orientation="Horizontal">
		                <Ellipse Fill="{Binding Fill}" Stroke="{Binding Stroke}"
		                         StrokeThickness="1" Width="10" Height="10"/>
		                <TextBlock Text="{Binding Title}" Foreground="{Binding Fill}"
		                           Margin="10" FontStyle="Italic"/>
		            </StackPanel>
		        </DataTemplate>
		    </telerikPrimitives:RadLegendControl.ItemTemplate>
		</telerikPrimitives:RadLegendControl>
