---
title: Implement a Legend Control for a Cartesian Chart with Area Series
page_title: Implement a Legend Control for a Cartesian Chart with Area Series
description: Check our &quot;Implement a Legend Control for a Cartesian Chart with Area Series&quot; documentation article for RadChart for UWP control.
slug: radchart-legendcontrol-implementforcartesianchartareaseries
tags: implement,a,legend,control,for,a,cartesian,chart,with,area,series
published: True
position: 3
---

# Implement a Legend Control for a Cartesian Chart with Area Series

The **RadLegendControl** could be bound to a chart with multiple series and the **LegendItem** instances will correspond to the different series.

## Example

Here's an example of how to implement a **RadLegendControl** for a **RadCartesianChart** with two **AreaSeries**.

![Cartesian Area Series Legend Contro](images/CartesianAreaSeriesLegendContro.png)

1. First, create a class for sample data.

		public class BodyWeight
		{
		    private static Random r = new Random();
		
		    public DateTime EntryDateTime { get; set; }
		
		    public double Weight { get; set; }
		
		    public static ObservableCollection<BodyWeight> GetWeightList()
		    {
		        return new ObservableCollection<BodyWeight>
		        {
		            new BodyWeight { EntryDateTime = DateTime.Now, Weight = r.Next(50, 60) },
		            new BodyWeight { EntryDateTime = DateTime.Now.AddDays(1), Weight = r.Next(50, 60) },
		            new BodyWeight { EntryDateTime = DateTime.Now.AddDays(2), Weight = r.Next(50, 60) },
		            new BodyWeight { EntryDateTime = DateTime.Now.AddDays(3), Weight = r.Next(50, 60) },
		            new BodyWeight { EntryDateTime = DateTime.Now.AddDays(4), Weight = r.Next(50, 60) },
		            new BodyWeight { EntryDateTime = DateTime.Now.AddDays(5), Weight = r.Next(50, 60) }
		        };
		    }
		}

1. Then, create a view model class.

		public class MainViewModel
		{
		    public MainViewModel()
		    {
		        this.LoadData();
		    }
		
		    private void LoadData()
		    {
		        this.Data1 = BodyWeight.GetWeightList();
		        this.Data2 = BodyWeight.GetWeightList();
		    }
		
		    public ObservableCollection<BodyWeight> Data1 { get; set; }
		
		    public ObservableCollection<BodyWeight> Data2 { get; set; }
		}

1. Create the **RadCartesianChart** in XAML using the **ViewModel** as **DataContext**:

		<telerikChart:RadCartesianChart x:Name="chart" PaletteName="DefaultDark" Width="300" Height="200">
		    <telerikChart:RadCartesianChart.DataContext>
		        <local:MainViewModel/>
		    </telerikChart:RadCartesianChart.DataContext>
		    <telerikChart:RadCartesianChart.Grid>
		        <telerikChart:CartesianChartGrid MajorLinesVisibility="XY"/>
		    </telerikChart:RadCartesianChart.Grid>
		    <telerikChart:RadCartesianChart.VerticalAxis>
		        <telerikChart:LinearAxis/>
		    </telerikChart:RadCartesianChart.VerticalAxis>
		    <telerikChart:RadCartesianChart.HorizontalAxis>
		        <telerikChart:DateTimeCategoricalAxis LabelFormat="{}{0:dd-MMM}" DateTimeComponent="Day"/>
		    </telerikChart:RadCartesianChart.HorizontalAxis>
		
		    <telerikChart:AreaSeries ItemsSource="{Binding Data1}" CombineMode="Stack" LegendTitle="Data 1">
		        <telerikChart:AreaSeries.ValueBinding>
		            <telerikChart:PropertyNameDataPointBinding PropertyName="Weight"/>
		        </telerikChart:AreaSeries.ValueBinding>
		        <telerikChart:AreaSeries.CategoryBinding>
		            <telerikChart:PropertyNameDataPointBinding PropertyName="EntryDateTime"/>
		        </telerikChart:AreaSeries.CategoryBinding>
		    </telerikChart:AreaSeries>
		
		    <telerikChart:AreaSeries ItemsSource="{Binding Data2}"  CombineMode="Stack" LegendTitle="Data 2">
		        <telerikChart:AreaSeries.ValueBinding>
		            <telerikChart:PropertyNameDataPointBinding PropertyName="Weight"/>
		        </telerikChart:AreaSeries.ValueBinding>
		        <telerikChart:AreaSeries.CategoryBinding>
		            <telerikChart:PropertyNameDataPointBinding PropertyName="EntryDateTime"/>
		        </telerikChart:AreaSeries.CategoryBinding>
		    </telerikChart:AreaSeries>
		</telerikChart:RadCartesianChart>

1. Finally, create the **RadLegendControl** in XAML:

		<telerikPrimitives:RadLegendControl LegendProvider="{Binding ElementName=chart}"/>
