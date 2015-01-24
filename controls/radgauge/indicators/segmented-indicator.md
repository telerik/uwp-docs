---
title: Segmented Indicators
page_title: Segmented Indicators
description: Segmented Indicators
slug: radgauge-segmented-indicator
tags: segmented,indicators
published: True
position: 5
---

# Segmented Indicators



## SegmentedGaugeIndicator Class

**SegmentedGaugeIndicator** class is the base class of the segmented indicators. It does not have any visual representation initially and users are expected to populate
the indicator with **BarIndicatorSegment** objects.


>**SegmentedGaugeIndicator** class inherits from the **GaugeIndicator** class - [See the inherited properties](%slug radgauge-indicators-gaugeindicatorclass%).

Two classes implement the functionality of SegmentedGaugeIndicator class in different
ways:

* **SegmentedLinearGaugeIndicator**
* **SegmentedRadialGaugeIndicator**

>**SegmentedLinearGaugeIndicator** and **SegmentedRadialIndicator** do not introduce any new properties and simply
implement the abstract logic of their base class by arranging their segments in circular and linear manners respectively.

### BarIndicatorSegment Properties

* **Length** (double): This is a proportional length of the segment. The actual length of each segment will be determined by Length divided by the sum of all the
segments' lengths.
* **Thickness** (double): This is the thickness of the segment. The concept is the same as the thickness of a line, or a circle.
* **Stroke** (Brush): This is the color of the segment. This property is of type **Brush**.

### SegmentedLinearGaugeIndicator Example

The following code sample demonstrates how to implement a RadLinearGauge with a SegmentedLinearGaugeIndicator and three colored BarIndicatorSegments.

	<telerik:RadLinearGauge LabelStep="60" TickStep="20" MaxValue="120"Width="200">
		<telerik:SegmentedLinearGaugeIndicator Value="120">
			<telerik:BarIndicatorSegment Stroke="Green" Length="3"/>
			<telerik:BarIndicatorSegment Stroke="Yellow" Length="2" />
			<telerik:BarIndicatorSegment Stroke="Red" Length="1" />
		</telerik:SegmentedLinearGaugeIndicator>
	</telerik:RadLinearGauge>

Result:

![Rad Gauge-Segmented Linear Gauge Indicator](images/RadGauge-SegmentedLinearGaugeIndicator.png)

### SegmentedRadialGaugeIndicator Example

The following code sample demonstrates how to implement a RadRadialGauge with a SegmentedLinearGaugeIndicator and three colored BarIndicatorSegments.

	<telerik:RadRadialGauge LabelStep="60" TickStep="20" MaxValue="120" LabelRadiusScale="1.10" Width="200">
		<telerik:SegmentedRadialGaugeIndicator Value="120">
			<telerik:BarIndicatorSegment Stroke="Green" Length="3"/>
			<telerik:BarIndicatorSegment Stroke="Yellow" Length="2" />
			<telerik:BarIndicatorSegment Stroke="Red" Length="1" />
		</telerik:SegmentedRadialGaugeIndicator>
	</telerik:RadRadialGauge>

Result:

![Rad Gauge-Segmented Radial Gauge Indicator](images/RadGauge-SegmentedRadialGaugeIndicator.png)