---
title: Pie Series
page_title: Pie Series
description: Check our &quot;Pie Series&quot; documentation article for RadChart for UWP control.
slug: radchart-series-pieseries
tags: pie,series
published: True
position: 1
---

# Pie Series

The **PieSeries** class is used to visualize a single series of data in a pie chart. The sweep of a pie's slices is directly proportional to the magnitude of the data points' values.

![Pie Series First Look](images/PieSeriesFirstLook.png)

## Properties

>**PieSeries** class inherits from the **ChartSeries** class -
[See the inherited properties]({%slug radchart-series-chartseriesproperties%}).

* **DataPoints**: Gets the collection of data points associated with the series.
* **ValueBinding**: Gets or sets the binding to a property of the data model that will be used to fill the pie slices.
* **AngleRange** (double *startAngle*, double *sweepAngle*, ChartSweepDirection*sweepDirection*): Gets or sets the angle range in which the the pie series will be visualied.
	* *startAngle*: The start angle for the segments.
	* *sweepAngle*: The sweep angle in which the segments will be arranged. The value must me in the interval [-360, 360].
	* *sweepDirection*: The direction in which the sweep angle will be measured.
	
	![Pie Series-Sweep Direction](images/PieSeries-SweepDirection.png)

* **HighlightBrush** (Brush): Gets or sets the brush used to render the semi-filled ellipse around the series.
* **DefaultSegmentStyle** (Style): Gets or sets the style that defines the default appearance of each pie slice.
* **SelectedPointOffset** (double): Gets or sets the offset applied to the currently selected point.

	>This value is applied only if the point's **OffsetFromCenter** property is 0.

* **SegmentStyleSelector**: Gets or sets the **Style** selector instance used to select the style for each PieDataPoint.
* **RadiusFactor** (double): Gets or sets the radius factor used to calculate the radius of the visual series. This value is usually within the (0, 1) range but it is possible to oversize the series by setting a value greater than 1.
* **SegmentStyles**: Gets the collection storing a **Style** instance for each segment present on the chart.
* **LegendTitleBinding**: Gets or sets the binding to a property from the data model that will be used by any attached legend to display the item's title.
* **IsVisibleInLegendBinding**: Gets or sets the binding to a property from the data model that will be used by any attached legend to specify whether to add the item in the legend.

## Example

Declare the **RadPieChart** and the **PieSeries**:

	<telerikChart:RadPieChart  x:Name="pieChart" PaletteName="DefaultDark">
	    <telerikChart:PieSeries ShowLabels="True">
	        <telerikChart:PieSeries.ValueBinding>
	            <telerikChart:PropertyNameDataPointBinding PropertyName="Value"/>
	        </telerikChart:PieSeries.ValueBinding>
	    </telerikChart:PieSeries>
	</telerikChart:RadPieChart>

Create sample data.

	public List<Data> CreateData()
	{
	    List<Data> data = new List<Data>();
	    data.Add(new Data() { Value = 20 });
	    data.Add(new Data() { Value = 45 });
	    data.Add(new Data() { Value = 35 });
	
	    return data;
	}
	
	public class Data
	{
	    public double Value { get; set; }
	}

Pass the sample data to the **ItemsSource** of the series.

	this.myChart.Series[0].ItemsSource = CreateData();



