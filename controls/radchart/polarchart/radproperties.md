---
title: Properties and Configuration
page_title: Properties and Configuration
description: Properties and Configuration
slug: radchart-radpolarchart-properties
tags: properties,and,configuration
published: True
position: 1
---

# Properties and Configuration

>The **RadPolarChart** class inherits from the **RadChartBase** class -
[See the inherited properties]({%slug radchart-properties%}).

* **PolarAxis**: Gets or sets the **PolarAxis** instance that will be used to plot points along the polar (radius) axis.
* **RadialAxis**: Gets or sets the **RadialAxis** instance that will be used to to determine the angular coordinate of the points.
* **StartAngle** (double): Gets or sets the angle at which the **PolarAxis** is anchored. The angle is measured counter-clockwise, starting from the right side of the ellipse.
* **Series**: Gets the collection containing all the series presented by this instance.
* **Grid**: Gets or sets the PolarChartGrid used to decorate the chart plot area with polar and angle lines.
The **PolarChartGrid** class represents a decoration layer over a **RadPolarChart**. It adds visual representation of polar and radial lines and stripes and exposes the following properties:
	* **PolarStripeBrushes**: Gets the collection of brushes used to display polar stripes.
	* **DefaultStripeBrush**: Gets or sets a brush that defines the default color of the stripes. Available only in the controls version targeting **Windows 8.1**.
	* **RadialStripeBrushes**: Gets the collection of brushes used to display radial stripes.
	* **GridLineVisibility**: Gets or sets which lines are displayed by this instance.
	* **StripesVisibility**: Gets or sets which stripes area displayed by this instance.
	* **PolarLineStyle**: Gets or sets the **Style** instance that defines the appearance of the polar (radius) lines within the grid. The style should target the **Line** type.
	* **RadialLineStyle**: Gets or sets the **Style** instance that defines the appearance of the radial (angle) lines within the grid. The style should target the **Ellipse** type.

			<telerikChart:RadPolarChart.Grid>
			    <telerikChart:PolarChartGrid  GridLineVisibility="Both" StripesVisibility="Radial">
			        <telerikChart:PolarChartGrid.RadialLineStyle>
			            <Style TargetType="Ellipse">
			                <Setter Property="Stroke" Value="Red"/>
			            </Style>
			        </telerikChart:PolarChartGrid.RadialLineStyle>
			    </telerikChart:PolarChartGrid>
			</telerikChart:RadPolarChart.Grid>