---
title: Arrow Indicator
page_title: Arrow Indicator
description: Check our &quot;Arrow Indicator&quot; documentation article for RadGauge for UWP control.
slug: gauge-arrow-indicator
tags: arrow,indicator
published: True
position: 4
---

# Arrow Indicator

The **ArrowGaugeIndicator** represents a specific value on the gauge scale as an arrow that points to this value.
Its visual representation consists of an arrow head, an arrow shaft and a circular arrow tail.

## Properties

The Arrow Indicator has one unique property plus several inherited properties.

>**ArrowGaugeIndicator class** inherits from the **BarGaugeIndicator** class -
[See the inherited properties]({%slug radgauge-indicators-bargaugeindicatorsclass%}).

* **ArrowTailRadius** (double): Gets or sets the radius of the arrow tail.

## Example

The following code sample shows how to add a ArrowGaugeIndicator to RadRadialGauge:

	<telerik:RadRadialGauge LabelStep="60" TickStep="20" MaxValue="120" LabelRadiusScale="1.10" Width="200">
		<telerik:ArrowGaugeIndicator Brush="Green" Thickness="3" ArrowTailRadius="2" Value="60"/>
	</telerik:RadRadialGauge>


Result:

![Rad Gauge-Arrow Indicator 265x 160](images/RadGauge-ArrowIndicator265x160.png)
