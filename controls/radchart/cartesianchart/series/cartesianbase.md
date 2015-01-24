---
title: CartesianSeries Class
page_title: CartesianSeries Class
description: CartesianSeries Class
slug: radchart-series-cartesianbase
tags: cartesianseries,class
published: True
position: 0
---

# CartesianSeries Class

The **CartesianSeries** class inherits from the base**PointTemplateSeries** class and adds notation for series that are used to visualize data points in the Cartesian coordinate system, by **RadCartesianChart**. Generally, the Cartesian series can be associated either with the owning chart's horizontal and vertical axes or they can be assigned arbitrary axis (axes), thus providing support for multiple-axes Cartesian chart.

## Properties

>**CartesianSeries** class inherits from the **PointTemplateSeries** class -
[See the inherited properties]({%slug radchart-series-pointtemplateseries%}).

* **HorizontalAxis**: Gets or sets the **CartesianAxis** instance that will be used to plot points along the horizontal (X) axis.

	The following code demonstrates how to specify a horizontal axis to a **BarSeries**.

		<telerik:BarSeries>
			<telerik:BarSeries.HorizontalAxis>
				<telerik:CategoricalAxis/>
			</telerik:BarSeries.HorizontalAxis>
		</telerik:BarSeries>

* **VerticalAxis**: Gets or sets the **CartesianAxis** instance that will be used to plot points along the vertical (Y) axis.

	The following code demonstrates how to specify a vertical axis to a **BarSeries**.

		<telerik:BarSeries>
			<telerik:BarSeries.VerticalAxis>
				<telerik:LinearAxis/>
			</telerik:BarSeries.VerticalAxis>
		</telerik:BarSeries>
