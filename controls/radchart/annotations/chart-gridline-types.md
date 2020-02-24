---
title: GridLine Annotation Types
page_title: GridLine Annotation Types
description: Check our &quot;GridLine Annotation Types&quot; documentation article for RadChart for UWP control.
slug: chart-annotations-gridline-types
tags: gridline,annotation,types
published: True
position: 1
---

# GridLine Annotation Types

In this article the properties of the **GridLineAnnotations** are described depending on the type of axis the annotation is associated with - cartesian, polar or radial.

## GridLine Annotation Properties

### Common properties

* **DashArray** (DoubleCollection)
* **Stroke** (Brush)
* **StrokeThickness** (double)
* 
### CartesianGridLineAnnotation specific properties

* **Axis** (CartesianAxis): the **CartesianGridLineAnnotation** needs to be associated with horizontal or vertical cartesian axis explicitly.
* **Value** (object): the place on the associated axis where a line crosses it.
	>When the associated axis is numerical (**Linear** or **Logarithmic**) a numeric value is expected, and when it is a **CategoricalAxis** - a category is expected.
* **Label** (string): the string that defines the label of the annotation. By default it is null.
* **[LabelDefinition]({%slug chart-annotations-labels%})** (ChartAnnotationLabelDefinition): defines the position of the annotation label. Check the [Annotation Labels]({%slug chart-annotations-labels%}) topic for more details.
* **PolarAxisGridLineAnnotation specific properties:**
* **Value** (double): specifies the location on the polar axis (the radius), where the circular grid line crosses it.

### RadialAxisGridLineAnnotation specific properties

* **Value** (object): specifies the location (angle or category) on the radial axis, where the grid line is drawn.
	>When the radial axis is **NumericalRadialAxis** a numeric value is expected, and when it is a **CategoricalRadialAxis** - a category is expected.

## Example of CartesianGridLineAnnotation

In the case of CartesianChart, the GridLine represents a vertical or horizontal line
that crosses the entire plot area. Here is an example that demonstrates how to define both horizontal and vertical
**CartesianGridLineAnnotation** in a **RadCartesianChart**.

![Cartesian Grid Line Annotation](images/CartesianGridLineAnnotation.png)

This is the definition of the chart:

	<telerikChart:RadCartesianChart x:Name="cartesianChart" Width="400" Height="250">
	    <telerikChart:RadCartesianChart.Annotations>
	        <telerikChart:CartesianGridLineAnnotation 
	            Axis="{Binding ElementName=cartesianChart, Path=VerticalAxis}" 
	            Value="6" Stroke="LightGreen" StrokeThickness="3"/>
	        <telerikChart:CartesianGridLineAnnotation 
	            Axis="{Binding ElementName=cartesianChart, Path=HorizontalAxis}" 
	            Value="2.8" Stroke="Tomato" StrokeThickness="3"/>
	    </telerikChart:RadCartesianChart.Annotations>
	
	    <telerikChart:RadCartesianChart.HorizontalAxis>
	        <telerikChart:LinearAxis />
	    </telerikChart:RadCartesianChart.HorizontalAxis>
	    <telerikChart:RadCartesianChart.VerticalAxis>
	        <telerikChart:LinearAxis/>
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


## Example of PolarAxisGridLineAnnotation

**PolarAxisGridLineAnnotation** is represented by concentric circles that cross the radial axis at specific **Value**. This example demonstrates how to define **PolarAxisGridLineAnnotation** in a **RadPolarChart**.

![Polar Axis Grid Line Annotation](images/PolarAxisGridLineAnnotation.png)

This is the definition of the chart:

	<telerikChart:RadPolarChart Height="350">
	    <telerikChart:RadPolarChart.Annotations>
	        <telerikChart:PolarAxisGridLineAnnotation Value="4" StrokeThickness="2" Stroke="Tomato"/>
	        <telerikChart:PolarAxisGridLineAnnotation Value="8" StrokeThickness="2" Stroke="LightGreen"/>
	        <telerikChart:PolarAxisGridLineAnnotation Value="10" StrokeThickness="2" Stroke="LightBlue"/>
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

## Example of RadialAxisGridLineAnnotation

**PolarAxisGridLineAnnotation** is represented by lines along the radius of the **PolarChart**. Here is an example that demonstrates how to define **PolarAxisGridLineAnnotation** in a **RadPolarChatr**.

![Radial Axis Grid Line Annotation](images/RadialAxisGridLineAnnotation.png)

This is the definition of the chart:

	<telerikChart:RadPolarChart  Height="350">
	    <telerikChart:RadPolarChart.Annotations>
	        <telerikChart:RadialAxisGridLineAnnotation Value="70" StrokeThickness="2" Stroke="Tomato"/>
	        <telerikChart:RadialAxisGridLineAnnotation Value="80" StrokeThickness="2" Stroke="LightGreen"/>
	        <telerikChart:RadialAxisGridLineAnnotation Value="130" StrokeThickness="2" Stroke="LightBlue"/>
	    </telerikChart:RadPolarChart.Annotations>
	
	    <telerikChart:RadPolarChart.RadialAxis>
	        <telerikChart:NumericalRadialAxis/>
	    </telerikChart:RadPolarChart.RadialAxis>
	    <telerikChart:RadPolarChart.PolarAxis>
	        <telerikChart:PolarAxis/>
	    </telerikChart:RadPolarChart.PolarAxis>
	    <telerikChart:PolarPointSeries>
	        <telerikChart:PolarPointSeries.DataPoints>
	            <telerikCharting:PolarDataPoint Value="8" Angle="30" />
	            <telerikCharting:PolarDataPoint Value="7" Angle="200" />
	            <telerikCharting:PolarDataPoint Value="11" Angle="300" />
	        </telerikChart:PolarPointSeries.DataPoints>
	    </telerikChart:PolarPointSeries>
	    <telerikChart:RadPolarChart.Grid>
	        <telerikChart:PolarChartGrid GridLineVisibility="Both" />
	    </telerikChart:RadPolarChart.Grid>
	</telerikChart:RadPolarChart>


# See Also

 * [Overview]({%slug chart-annotations-overview%})
 * [PlotBand Annotation Types]({%slug chart-annotations-plotband-types%})
 * [Custom Annotation Types]({%slug chart-annotations-custom-types%})
 * [Annotation Labels]({%slug chart-annotations-labels%})
