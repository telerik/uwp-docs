---
title: PlotBand Annotation Types
page_title: PlotBand Annotation Types
description: PlotBand Annotation Types
slug: chart-annotations-plotband-types
tags: plotband,annotation,types
published: True
position: 2
---

# PlotBand Annotation Types

In this article the properties of the **PlotBandAnnotations** are described depending on the type of axis the annotation is associated with - cartesian, polar or radial.

## PlotBand Annotation Properties

### Common properties

* **Fill**
* **DashArray**
* **Stroke**
* **StrokeThickness**
* **CartesianPlotBandAnnotation specific properties:**
* **Axis**: the cartesian plotband annotation needs to be associated with horizontal or vertical axis explicitly.
* **From** (of type object): the starting value for the plotband.
	>When the axis is numerical (Linear or Logarithmic) a numeric value is expected, and when it is a CategoricalAxis - a category is expected.
* **To** (of type object): the ending value for the plotband.
	>When the axis is numerical (Linear or Logarithmic) a numeric value is expected, and when it is a CategoricalAxis - a category is expected.
* **Label** (string): the string that defines the label of the annotation. By default it is null.
* **[LabelDefinition]({%slug chart-annotations-labels%})** (ChartAnnotationLabelDefinition): defines the position of the annotation label. Check the [Annotation Labels]({%slug chart-annotations-labels%}) topic for more details.

### PolarAxisPlotBandAnnotation specific properties

* **From** (of type double): the starting point for the plotband.
* **To** (of type double): the ending point for the plotband.

### RadialAxisPlotBandAnnotation specific properties

* **From** (of type object): the starting point for the plotband.
	>When the radial axis is NumericalRadialAxis a numeric value is expected, and when it is a CategoricalRadialAxis - a category.
* **To** (of type object): the ending point for the plotband.
	>When the radial axis is NumericalRadialAxis a numeric value is expected, and when it is a CategoricalRadialAxis - a category.

## Example of CartesianPlotBandAnnotations

**CartesianPlotbandAnnotation** is either a horizontal or a vertical stripe that crosses the whole chart and marks a value range on the associate axis. Here is an example that demonstrates how to define both horizontal and vertical **CartesianPlotBandAnnotation** in a **RadCartesianChart**.

![Cartesian Plot Band Annotation](images/CartesianPlotBandAnnotation.png)

This is the definition of the chart:

	<telerikChart:RadCartesianChart Width="400" Height="300">
	    <telerikChart:RadCartesianChart.Annotations>
	        <telerikChart:CartesianPlotBandAnnotation Axis="{Binding ElementName=horizontalAxis}" 
	                                                  From="1.8" To="2.8" 
	                                                  Stroke="LightGreen" StrokeThickness="1" Fill="#2090EE90"/>
	        <telerikChart:CartesianPlotBandAnnotation Axis="{Binding ElementName=verticalAxis}" 
	                                                  From="3" To="5" 
	                                                  Stroke="Tomato" StrokeThickness="1" Fill="#20FF6347"/>
	    </telerikChart:RadCartesianChart.Annotations>
	    <telerikChart:RadCartesianChart.HorizontalAxis>
	        <telerikChart:LinearAxis x:Name="horizontalAxis"/>
	    </telerikChart:RadCartesianChart.HorizontalAxis>
	    <telerikChart:RadCartesianChart.VerticalAxis>
	        <telerikChart:LinearAxis x:Name="verticalAxis"/>
	    </telerikChart:RadCartesianChart.VerticalAxis>
	    <telerikChart:ScatterPointSeries>
	        <telerikChart:ScatterPointSeries.DataPoints>
	            <telerikCharting:ScatterDataPoint XValue="1" YValue="1" />
	            <telerikCharting:ScatterDataPoint XValue="5" YValue="3" />
	            <telerikCharting:ScatterDataPoint XValue="8" YValue="11" />
	        </telerikChart:ScatterPointSeries.DataPoints>
	    </telerikChart:ScatterPointSeries>
	    <telerikChart:RadCartesianChart.Grid>
	        <telerikChart:CartesianChartGrid MajorLinesVisibility="XY" />
	    </telerikChart:RadCartesianChart.Grid>
	</telerikChart:RadCartesianChart>

## Example of PolarAxisPlotBandAnnotation

**PolarAxisPlotBandAnnotation** is represented by concentric stripe that mark a specific value (radius) range on the polar axis. This example demonstrates how to define **PolarAxisPlotBandAnnotation** in a **RadPolarChart**.

![Polar Axis Plot Band Annotation](images/PolarAxisPlotBandAnnotation.png)

This is the definition of the chart:

	<telerikChart:RadPolarChart Height="350">
	    <telerikChart:RadPolarChart.Annotations>
	        <telerikChart:PolarAxisPlotBandAnnotation From="2.8" To="4.8" Stroke="Tomato" Fill="#20FF6347"/>
	        <telerikChart:PolarAxisPlotBandAnnotation From="7" To="9.5" Stroke="LightGreen" Fill="#2090EE90"/>
	    </telerikChart:RadPolarChart.Annotations>
	    <telerikChart:RadPolarChart.RadialAxis>
	        <telerikChart:NumericalRadialAxis/>
	    </telerikChart:RadPolarChart.RadialAxis>
	    <telerikChart:RadPolarChart.PolarAxis>
	        <telerikChart:PolarAxis/>
	    </telerikChart:RadPolarChart.PolarAxis>
	    <telerikChart:PolarPointSeries>
	        <telerikChart:PolarPointSeries.DataPoints>
	            <telerikCharting:PolarDataPoint Value="1" Angle="15" />
	            <telerikCharting:PolarDataPoint Value="5" Angle="200" />
	            <telerikCharting:PolarDataPoint Value="11" Angle="300" />
	        </telerikChart:PolarPointSeries.DataPoints>
	    </telerikChart:PolarPointSeries>
	    <telerikChart:RadPolarChart.Grid>
	        <telerikChart:PolarChartGrid GridLineVisibility="Both" />
	    </telerikChart:RadPolarChart.Grid>
	</telerikChart:RadPolarChart>

## Example of RadialAxisPlotBandAnnotation

**RadialAxisPlotBandAnnotation** is represented by a sector of the circle (pie slice) that marks specific angular/categorical range. This example demonstrates how to define **RadialAxisPlotBandAnnotation** in a **RadPolarChart**.

![Radial Axis Plot Band Annotation](images/RadialAxisPlotBandAnnotation.png)

This is the definition of the chart:

	<telerikChart:RadPolarChart Height="350">
	    <telerikChart:RadPolarChart.Annotations>
	        <telerikChart:RadialAxisPlotBandAnnotation From="10" To="50"  Stroke="LightGreen" StrokeThickness="1" Fill="#2090EE90"/>
	        <telerikChart:RadialAxisPlotBandAnnotation From="120" To="160"  Stroke="Tomato" StrokeThickness="1" Fill="#20FF6347"/>
	    </telerikChart:RadPolarChart.Annotations>
	    <telerikChart:RadPolarChart.RadialAxis>
	        <telerikChart:NumericalRadialAxis/>
	    </telerikChart:RadPolarChart.RadialAxis>
	    <telerikChart:RadPolarChart.PolarAxis>
	        <telerikChart:PolarAxis/>
	    </telerikChart:RadPolarChart.PolarAxis>
	    <telerikChart:PolarPointSeries>
	        <telerikChart:PolarPointSeries.DataPoints>
	            <telerikCharting:PolarDataPoint Value="1" Angle="15" />
	            <telerikCharting:PolarDataPoint Value="5" Angle="200" />
	            <telerikCharting:PolarDataPoint Value="11" Angle="300" />
	        </telerikChart:PolarPointSeries.DataPoints>
	    </telerikChart:PolarPointSeries>
	    <telerikChart:RadPolarChart.Grid>
	        <telerikChart:PolarChartGrid GridLineVisibility="Both" />
	    </telerikChart:RadPolarChart.Grid>
	</telerikChart:RadPolarChart>


# See Also

 * [Overview]({%slug chart-annotations-overview%})
 * [GridLine Annotation Types]({%slug chart-annotations-gridline-types%})
 * [Custom Annotation Types]({%slug chart-annotations-custom-types%})
 * [Annotation Labels]({%slug chart-annotations-labels%})
