---
title: Overview
page_title: Overview
description: Check our &quot;Overview&quot; documentation article for RadChart for UWP control.
slug: radchart-polarchart-overview
tags: overview
published: True
position: 0
---

# Overview

The **RadPolarChart** has one **PolarAxis** and supports two **RadialAxis** types that determine the type of data that can be visualized on the chart.

* **[PolarAxis]({%slug radchart-axes-polaraxis%})**: A special numerical axis used to calculate the Radius value of each data point. Exposes **Minimum** and **Maximum** properties to allow explicit definition of the range of values visible on this axis. If these properties are not specified, the axis will automatically calculate the range, depending on the minimum and maximum
data point values.
* **RadialAxes**: Circular axis. Two types of radial axes are available:
	* **[NumericalRadialAxis]({%slug radchart-axes-numericalradialaxis%})**: Used when the data points have angular coordinate. The position of each data point is calculated, depending on the actual numerical value (in degrees) this point provides for the axis. The range of the axis is always from 0 to 360 degrees.
	* **[CategoricalRadialAxis]({%slug radchart-axes-categoricalradialaxis%})**: Plots the associated data into groups (categories) where the key of each category is the point’s value (if available) for that axis or its index within the points collection if the categorical value is not available. The whole axis is divided into slots for each category and each data point is visualized at angle corresponding to its category.

The difference between the two types axes in **PolarChart** are best demonstrated on the image below.

![Polar Chart Overview](images/PolarChartOverview.png)

Each **RadialAxis** supports different types of series.

* **NumericalRadialAxis**: Supports numerical series where each **DataPoint** has radial and angular coordinate - [PolarPointSeries ]({%slug radchart-series-polarchart-series-polar-polarpoint%}) and all classes that inherit it.
* **CategoricalRadialAxis**: Supports categorical series where each **DataPoint** has radial coordinate and category - [RadarPointSeries]({%slug radchart-series-polarchart-series-radar-radarpoint%}) and all classes that inherit it.

# See Also

 * [Series - Overview]({%slug radchart-series-overview%})
