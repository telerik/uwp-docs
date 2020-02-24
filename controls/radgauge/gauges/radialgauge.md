---
title: Radial Gauge
page_title: Radial Gauge
description: Check our &quot;Radial Gauge&quot; documentation article for RadGauge for UWP control.
slug: radgauge-gauges-radialgauge
tags: radial,gauge
published: True
position: 0
---

# Radial Gauge

Radial Gauge is a circular scale with numbers and ticks. It can display multiple scales and ranges.

## Properties

>**RadRadialGauge** class inherits from the **RadGauge** class - 
[See the inherited properties]({%slug radgauge-properties%}).

* **TickRadiusScale** (double): Gets or sets a scale factor that will be multiplied by the radius
of the range in order to position the ticks.
* **LabelRadiusScale** (double): Gets or sets a scale factor that will be multiplied by the radius
of the range in order to position the labels.
* **MaxAngle** (double): Gets or sets the MaxAngle property.
* **MinAngle** (double): Gets or sets the MinAngle property.

## Example

The following code sample demonstrates how to define RadRadialGauge:

	<telerik:RadRadialGauge Height="200" MinValue="0" MaxValue="120" MaxAngle="340" MinAngle="90" LabelRadiusScale="1.10" TickStep="10" LabelStep="20"/>

Result:

![Rad Gauge-Rad Radial Gauge Example](images/RadGauge-RadRadialGaugeExample.png)
