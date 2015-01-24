---
title: Properties and Configuration
page_title: Properties and Configuration
description: Properties and Configuration
slug: radchart-cartesianchart-properties
tags: properties,and,configuration
published: True
position: 0
---

# Properties and Configuration

>**RadCartesianChart** class inherits from the **RadChartBase** class -
[See the inherited properties]({%slug radchart-properties%}).

* **HorizontalAxis**: Gets or sets the visual Axis instance that will be used to plot points along the horizontal (X) axis.
* **VerticalAxis**: Gets or sets the visual Axis instance that will be used to plot points along the vertical (Y) axis.
* **[Series]({%slug radchart-series-overview%})**: Gets the collection containing all the series presented by this instance.
* **[Indicators]({%slug radchart-series-radcartesianchart-indicators-indicators%})**: Gets the collection containing all the indicators presented by this instance.
* **Grid**: Gets or sets the **CartesianChartGrid** instance used to decorate the chart plot area with grid and strip lines.

	The CartesianChartGrid class represents a decoration over a **RadCartesianChart** plot area. It adds grid lines connected to each major tick of each axis and exposes the following properties:

	* **MajorLinesVisibility**: Gets or sets the visibility of major grid lines.
	* **MajorXLinesRenderMode**: Gets or sets the render mode of majorhorizontal (X) grid lines.
	* **MajorYLinesRenderMode**: Gets or sets the render mode of major vertical (Y) grid lines.
	* **StripLinesVisibility**: Gets or sets the visibility of the grid stripes.
	* **DefaultStripeBrush**: Gets or sets a brush that defines the default color of the stripes. Available only in the controls version targeting **Windows 8.1**.
	* **XStripeBrushes**: Gets the collection of brushes used to display horizontal stripes.
	* **YStripeBrushes**: Gets the collection of brushes used to display the vertical stripes.
	* **MajorXLineStyle**: Gets or sets the style that defines the appearance of the major horizontal grid lines.
	* **MajorYLineStyle**: Gets or sets the style that defines the appearance of the major vertical grid lines.

	Here is an example of how to add a CartesianChartGrid:

		<telerikChart:RadCartesianChart.Grid>
		    <telerikChart:CartesianChartGrid StripLinesVisibility="XY" MajorLinesVisibility="XY">
		        <telerikChart:CartesianChartGrid.MajorXLineStyle>
		            <Style TargetType="Line">
		                <Setter Property="Stroke"  Value="Red"/>
		                <Setter Property="StrokeDashArray" Value="10, 2"/>
		            </Style>
		        </telerikChart:CartesianChartGrid.MajorXLineStyle>
		        <telerikChart:CartesianChartGrid.YStripeBrushes>
		            <SolidColorBrush Color="#11CACACA"/>
		            <SolidColorBrush Color="Transparent"/>
		        </telerikChart:CartesianChartGrid.YStripeBrushes>
		    </telerikChart:CartesianChartGrid>
		</telerikChart:RadCartesianChart.Grid>