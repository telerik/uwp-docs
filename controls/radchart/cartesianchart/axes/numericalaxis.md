---
title: NumericalAxis Class
page_title: NumericalAxis Class
description: NumericalAxis Class
slug: radchart-axes-numericalclass
tags: numericalaxis,class
published: True
position: 2
---

# NumericalAxis Class



## Properties

>**NumericalAxis** class inherits from the **CartesianAxis** class - [See the inherited properties]({%slug radchart-axes-cartesianaxis%}).

* **Minimum** (double): Gets or sets the minimum value of the axis. By default, the axis itself will calculate the minimum, depending on the minimum value of the plotted data points.
* **Maximum** (double): Gets or sets the maximum value of the axis. By default, the axis itself will calculate the maximum, depending on the maximum value of the plotted data points.
* **DesiredTickCount** (int): Defines a value that specifies how many ticks are drawn on the axis. This value is used when the **MajorStep** value is auto-calculated. This is useful when the actual range is not known and the major step may not be manually determined.
* **ActualRange** (double min, double max): Gets the actual range used by the axis to plot data points.
* **RangeExtendDirection**: Defines a value that specifies how the actual range of the axis (when auto-calculated) should be extended. By default the axis will calculate its minimum and maximum in such a way that the data is best visualized. For example, if the maximum data point value is 50, the axis will make its Maximum 50 + MajorStep, so that the plotted data will not intersect with the top of the plot area. Four different values are available:
	* **None**: The range is not extended and the minimum and the maximum are the smallest and biggest data point values respectively.
	* **Positive**: The range maximum will be extended (if necessary) with one major step.
	* **Negative**: The range minimum will be extended (if necessary) with one major step.
	* **Both**: Both minimum and maximum will be extended (if necessary) with one major step.

